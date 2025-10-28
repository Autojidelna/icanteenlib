/*
 MIT License

Copyright (c) 2022-2023 Matyáš Caras, Tomáš Protiva and contributors

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
/*
  testováno na webu http://obedy.zs-mat5.cz/
*/

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;
import 'package:icanteenlib/canteenlib.dart';
import 'package:icanteenlib/src/utils/string_utils.dart';

/// Reprezentuje kantýnu verze 2.18.19
///
/// **Všechny metody v případě chyby vrací [Future] s chybovou hláškou.**
class Canteen2v18v19 extends Canteen {
  /// Sušenky potřebné pro komunikaci
  Map<String, String> cookies = {"JSESSIONID": "", "XSRF-TOKEN": ""};

  String? _username;
  late String _url;

  @override
  get missingFeatures => <Features>[Features.burzaAmount, Features.vydejny];

  /// Je uživatel přihlášen?
  @override
  bool prihlasen = false;
  Canteen2v18v19(super.url);

  Map<UzivatelskeUdajeKeys, String?> _parseUserFields(dom.Document document) {
    final map = <UzivatelskeUdajeKeys, String?>{};

    for (final dom.Element td in document.querySelectorAll('td')) {
      if (td.querySelector('table') != null) continue;

      final dom.Element? bold = td.querySelector('b');
      if (bold != null) {
        // Get only the text node directly inside <td>, excluding text from nested elements
        final String directTextNodes = td.nodes.whereType<dom.Text>().map((t) => t.text).join();
        if (directTextNodes.contains(':')) {
          final String label = directTextNodes.split(':').first.trim();
          final String normalized = label.normalize();

          UzivatelskeUdajeKeys? field;
          try {
            field = UzivatelskeUdajeKeys.values.firstWhere((f) => f.toString() == normalized);
          } catch (e) {
            field = null; // unknown label, skip
          }

          if (field != null) {
            map[field] = bold.text.trim().isEmpty ? null : bold.text.trim();
          }
        }
      }
    }

    return map;
  }

  /// Vrátí informace o uživateli ve formě instance [Uzivatel]
  @override
  Future<Uzivatel> ziskejUzivatele() async {
    if (!prihlasen) return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    String res;
    try {
      res = await _getRequest("/web/setting");
    } catch (e) {
      return Future.error(e);
    }

    final dom.Document document = parser.parse(res);
    final Map<UzivatelskeUdajeKeys, String?> userData = _parseUserFields(document);

    dom.Element? kreditElement = document.getElementById('Kredit');
    String kredit = kreditElement?.text ?? '0.0';
    kredit = kredit.replaceAll(RegExp(r'[^0-9,.-]'), '').replaceAll(',', '.');

    return Uzivatel(
      uzivatelskeJmeno: _username,
      jmeno: userData[UzivatelskeUdajeKeys.jmeno],
      prijmeni: userData[UzivatelskeUdajeKeys.prijmeni],
      kategorie: userData[UzivatelskeUdajeKeys.kategorie],
      ucetProPlatby: userData[UzivatelskeUdajeKeys.ucetProPlatbyDoJidelny],
      varSymbol: userData[UzivatelskeUdajeKeys.variabilniSymbol],
      specSymbol: userData[UzivatelskeUdajeKeys.specifickySymbol],
      kredit: double.parse(kredit),
    );
  }

  Future<void> _getFirstSession() async {
    _url = url;
    if (url.endsWith("/")) _url = url.substring(0, url.length - 1); // odstranit lomítko
    try {
      var res = await http.get(Uri.parse(_url));
      _parseCookies(res.headers['set-cookie']!);
    } catch (e) {
      return Future.error(CanteenLibExceptions.chybaSite);
    }
  }

  /// Převede cookie řetězec z požadavku do mapy
  void _parseCookies(String cookieString) {
    Map<String, String> cookies = this.cookies;
    var regCookie = RegExp(r'([A-Z\-]+=.+?(?=;))|(remember-me=.+?)(?=;)').allMatches(cookieString).toList();
    for (var cook in regCookie) {
      var c = cook.group(0).toString().split("=");
      cookies[c[0]] = c[1];
    }
  }

  @override
  Future<bool> login(String user, String password) async {
    if (cookies["JSESSIONID"] == "" || cookies["XSRF-TOKEN"] == "") {
      try {
        await _getFirstSession();
      } catch (e) {
        return Future.error(e);
      }
    }
    http.Response res;
    try {
      res = await http.post(
        Uri.parse("$_url/j_spring_security_check"),
        headers: {
          "Cookie": "JSESSIONID=${cookies["JSESSIONID"]!}; XSRF-TOKEN=${cookies["XSRF-TOKEN"]!};",
          "Content-Type": "application/x-www-form-urlencoded",
        },
        body: {
          "j_username": user,
          "j_password": password,
          "terminal": "false",
          "_csrf": cookies["XSRF-TOKEN"],
          "_spring_security_remember_me": "on",
          "targetUrl": "/faces/secured/main.jsp?terminal=false&status=true&printer=&keyboard=",
        },
      );
    } catch (e) {
      return Future.error(CanteenLibExceptions.chybaSite);
    }

    if (res.headers['set-cookie']!.contains("remember-me=;")) {
      return false; // špatné heslo
    }

    if (res.statusCode != 302) {
      return Future.error("Chyba: ${res.body}");
    }
    _parseCookies(res.headers['set-cookie']!);

    _username = user;
    prihlasen = true;
    return true;
  }

  /// Builder pro GET request
  Future<String> _getRequest(String path) async {
    http.Response res;
    try {
      res = await http.get(
        Uri.parse(_url + path),
        headers: {
          "Cookie":
              "JSESSIONID=${cookies["JSESSIONID"]!}; XSRF-TOKEN=${cookies["XSRF-TOKEN"]!}${cookies.containsKey("remember-me") ? "; ${cookies["remember-me"]!};" : ";"}",
        },
      );
    } catch (e) {
      return Future.error(CanteenLibExceptions.chybaSite);
    }

    if (res.statusCode != 200 || res.body.contains("fail") || res.body.contains("Chyba")) {
      return Future.error("Chyba: ${res.body}");
    }

    if (res.body.contains("přihlášení uživatele")) {
      prihlasen = false;
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }

    if (res.headers.containsKey("set-cookie")) {
      _parseCookies(res.headers["set-cookie"]!);
    }

    return res.body;
  }

  @override
  Future<List<Jidelnicek>> verejnyJidelnicek() async {
    String res;
    try {
      res = await _getRequest("/");
    } catch (e) {
      return Future.error(e);
    }
    var reg = RegExp(
      r'((?=<div class="jidelnicekDen">).+?(?=<div class="jidelnicekDen">))|((?=<div class="jidelnicekDen">).*<\/span>)',
      dotAll: true,
    ).allMatches(res).toList();

    List<Jidelnicek> jidelnicek = [];

    for (var t in reg) {
      // projedeme každý den individuálně
      var j = t.group(0).toString(); // převedeme text na něco přehlednějšího
      var den = DateTime.parse(RegExp(r'(?<=day-).+?(?=")', dotAll: true).firstMatch(j)!.group(0).toString());
      var jidlaDenne = RegExp(
        r'(?=<div class="container">).+?<\/div>.+?(?=<\/div>)',
        dotAll: true,
      ).allMatches(j).toList(); // získáme jednotlivá jídla pro den / VERZE 2.18
      if (jidlaDenne.isEmpty) {
        jidlaDenne = RegExp(
          r'(?=<div style="padding: 2 0 2 20">).+?(?=<\/div>)',
          dotAll: true,
        ).allMatches(j).toList(); // získáme jednotlivá jídla pro den / VERZE 2.10
      }

      List<Jidlo> jidla = [];

      for (var jidloNaDen in jidlaDenne) {
        // projedeme vsechna jidla
        var s = jidloNaDen
            .group(0)!
            .replaceAll(RegExp(r'[a-zA-ZěščřžýáíéÉÍÁÝŽŘČŠĚŤŇťň.,:]  [a-zA-ZěščřžýáíéÉÍÁÝŽŘČŠĚŤŇťň.,:]'), ''); // odstraní dvojté mezery mezi písmeny

        var vydejna = RegExp(r'(?<=<span style="color: #1b75bb;">).+?(?=<)').firstMatch(s); // název výdejny / verze 2.18
        vydejna ??= RegExp(r'(?<=<span class="smallBoldTitle" style="color: #1b75bb;">).+?(?=<)').firstMatch(s); // název výdejny / verze 2.10

        var hlavni = RegExp(
          r' {20}(([a-zA-ZěščřžýáíéÉÍÁÝŽŘČŠĚŤŇťň.,:\/]+ )+[a-zA-ZěščřžýáíéÉÍÁÝŽŘČŠĚŤŇťň.,:\/]+)',
          dotAll: true,
        ).firstMatch(s)!.group(1).toString(); // Jídlo

        jidla.add(Jidlo(nazev: hlavni, objednano: false, varianta: vydejna!.group(0).toString(), lzeObjednat: false, den: den, naBurze: false));
      }
      jidelnicek.add(Jidelnicek(den, jidla));
    }
    return jidelnicek;
  }

  @override
  Future<List<Jidelnicek>> jidelnicekMesic() async {
    if (!prihlasen) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    String res;
    try {
      res = await _getRequest("/faces/secured/mobile.jsp");
    } catch (e) {
      return Future.error(e);
    }

    var jidla = <Jidlo>[];
    var jidelnicek = RegExp(r'<div class="jidelnicekItemWrapper">([\s\S]+?)</div>\s*</div>', dotAll: true).allMatches(res).toList();
    for (var obed in jidelnicek) {
      jidla.add(_parsePrihlasenyJidlo(obed));
    }
    Map<DateTime, List<Jidlo>> jidlaMap = {};
    for (var jidlo in jidla) {
      if (jidlaMap.containsKey(jidlo.den)) {
        jidlaMap[jidlo.den]!.add(jidlo);
      } else {
        jidlaMap[jidlo.den] = [jidlo];
      }
    }
    List<Jidelnicek> jidelnicekList = [];
    for (var jidelnicek in jidlaMap.values) {
      jidelnicekList.add(Jidelnicek(jidelnicek[0].den, jidelnicek));
    }
    return jidelnicekList;
  }

  Jidlo _parsePrihlasenyJidlo(RegExpMatch obed) {
    // formátování do třídy
    var obedFormated = obed.group(0).toString().replaceAll(RegExp(r'(   )+|([^>a-z]\n)'), '');
    var objednano = obedFormated.contains("Máte objednáno");
    var obedDen = DateTime.parse(RegExp(r'(?<=day-).+?(?=")', dotAll: true).firstMatch(obedFormated)!.group(0).toString());
    var lzeObjednat = !(obedFormated.contains("nelze zrušit") || obedFormated.contains("nelze objednat") || obedFormated.contains("nelze změnit"));

    var cenaMatch = RegExp(r'((?<=Cena objednaného jídla">).+?(?=&))').firstMatch(obedFormated);
    cenaMatch ??= RegExp(r'(?<=Cena při objednání jídla:&nbsp;).+?(?=&)').firstMatch(obedFormated);
    cenaMatch ??= RegExp(r'(?<=Cena při objednání jídla">).+?(?=&)').firstMatch(obedFormated);

    var cena = double.parse(cenaMatch!.group(0).toString().replaceAll(",", "."));
    var jidlaProDen = RegExp(
      r'<div class="jidWrapCenter.+?>(.+?)(?=<\/div>)',
      dotAll: true,
    ).firstMatch(obedFormated)!.group(1).toString().replaceAll(' ,', ",").replaceAll(" <br>", "").replaceAll("\n", "");
    var alergenyList = RegExp(r'(<span\s*title=.*?<\/span>)').allMatches(jidlaProDen).toList();
    var alergeny = alergenyList.map<Alergen>((e) {
      var jmeno = RegExp(r'<b>(.+?)<\/b>').firstMatch(e.group(1).toString())!.group(1);
      var popis = RegExp(r'<\/b> - (.+)').firstMatch(e.group(1).toString())?.group(1);
      var kod = RegExp(r'class="textGrey">(\d+?),?\s?').firstMatch(e.group(1).toString())?.group(1);
      return Alergen(nazev: jmeno!, kod: kod == null ? null : int.parse(kod), popis: popis);
    }).toList();

    var vydejna = RegExp(r'(?<=<span class="smallBoldTitle button-link-align">).+?(?=<)').firstMatch(obedFormated)!.group(0).toString();

    String? orderUrl;
    String? burzaUrl;
    if (lzeObjednat) {
      // pokud lze objednat, nastavíme adresu pro objednání
      var match = RegExp(r"(?<=ajaxOrder\(this, ').+?(?=')").firstMatch(obedFormated);
      if (match != null) {
        orderUrl = match.group(0)!.replaceAll("amp;", "");
      }
    } else {
      // jinak nastavíme URL pro burzu
      var match = RegExp(r"""db\/dbProcessOrder\.jsp.+?type=((plusburza)|(minusburza)|(multiburza)).+?(?=')""").firstMatch(obedFormated);
      if (match != null) {
        burzaUrl = match.group(0)!.replaceAll("amp;", "");
      }
    }
    var jidloJmeno = jidlaProDen.split('<sub>')[0];
    jidloJmeno = cleanString(jidloJmeno);
    return Jidlo(
      nazev: jidloJmeno.replaceAll(r' (?=[^a-zA-ZěščřžýáíéĚŠČŘŽÝÁÍÉŤŇťň])', ''),
      objednano: objednano,
      varianta: vydejna,
      lzeObjednat: lzeObjednat,
      cena: cena,
      orderUrl: orderUrl,
      den: obedDen,
      burzaUrl: burzaUrl,
      naBurze: (burzaUrl == null) ? false : burzaUrl.contains("minusburza"),
      alergeny: alergeny,
      kategorizovano: parseJidlo(jidloJmeno),
    );
    // KONEC formátování do třídy
  }

  @override
  Future<Jidelnicek> jidelnicekDen({DateTime? den}) async {
    if (!prihlasen) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }

    den ??= DateTime.now();

    String res;
    try {
      res = await _getRequest(
        "/faces/secured/main.jsp?day=${den.year}-${(den.month < 10) ? "0${den.month}" : den.month}-${(den.day < 10) ? "0${den.day}" : den.day}&terminal=false&printer=false&keyboard=false",
      );
    } catch (e) {
      return Future.error(e);
    }

    var jidla = <Jidlo>[];
    var jidelnicek = RegExp(r'(?<=<div class="jidWrapLeft">).+?((fa-clock)|(fa-ban))', dotAll: true).allMatches(res).toList();
    for (var obed in jidelnicek) {
      jidla.add(_parsePrihlasenyJidlo(obed));
    }

    return Jidelnicek(den, jidla);
  }

  @override
  Future<Jidelnicek> objednat(Jidlo jidlo) async {
    if (!prihlasen) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }

    if (!jidlo.lzeObjednat || jidlo.orderUrl == null || jidlo.orderUrl!.isEmpty) {
      return Future.error(CanteenLibExceptions.jidloNelzeObjednat);
    }

    try {
      await _getRequest("/faces/secured/${jidlo.orderUrl!}"); // provést operaci
    } catch (e) {
      if (isEnumItem(e, CanteenLibExceptions.values)) return Future.error(e);
      return Future.error(CanteenLibExceptions.chybaObjednani);
    }

    return jidelnicekDen(den: jidlo.den);
  }

  @override
  Future<Jidelnicek> doBurzy(Jidlo jidlo, {int amount = 1}) async {
    if (!prihlasen) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }

    if (jidlo.burzaUrl == null || jidlo.burzaUrl!.isEmpty) {
      return Future.error(CanteenLibExceptions.jidloNelzeObjednat);
    }

    if (amount < 1 && jidlo.burzaUrl!.endsWith("amount=")) {
      return Future.error(CanteenLibExceptions.meneNezJedenKus);
    }
    var finalUrl = (jidlo.burzaUrl!.endsWith("amount=")) ? "${jidlo.burzaUrl}$amount" : jidlo.burzaUrl;
    try {
      await _getRequest("/faces/secured/$finalUrl"); // provést operaci
    } catch (e) {
      if (isEnumItem(e, CanteenLibExceptions.values)) return Future.error(e);
      return Future.error(CanteenLibExceptions.chybaObjednani);
    }
    return jidelnicekDen(den: jidlo.den);
  }

  @override
  Future<List<Burza>> ziskatBurzu() async {
    if (!prihlasen) return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    List<Burza> burza = [];

    String res;
    try {
      res = await _getRequest("/faces/secured/burza.jsp");
    } catch (e) {
      return Future.error(e);
    }

    var dostupnaJidla = RegExp(r'(?<=<tr class="mouseOutRow">).+?(?=<\/tr>)', dotAll: true).allMatches(res); // vyfiltrujeme jednotlivá jídla
    if (dostupnaJidla.isNotEmpty) {
      for (var burzaMatch in dostupnaJidla) {
        var bu = burzaMatch.group(0)!;
        var data = RegExp(
          r'((?<=<td>).+?(?=<))|(?<=<td align="left">).+?(?=<)|((?<=<td align="right">).+?(?=<))',
          dotAll: true,
        ).allMatches(bu).toList();

        // Získat datum
        var datumRaw = RegExp(r'\d\d\.\d\d\.\d{4}').firstMatch(data[1].group(0)!)!.group(0)!.split(".");
        var datum = DateTime.parse("${datumRaw[2]}-${datumRaw[1]}-${datumRaw[0]}");
        // Získat variantu
        var varianta = data[0].group(0)!;
        // Získat název jídla
        var nazev = data[2].group(0)!.replaceAll(RegExp(r'\n|  '), "");
        // Získat počet kusů
        var pocet = int.parse(data[4].group(0)!.replaceAll(" ks", ""));
        var url = RegExp(r"(?<=')db.+?(?=')").firstMatch(bu)!.group(0)!.replaceAll("&amp;", "&");

        var jidlo = Burza(den: datum, varianta: varianta, nazev: nazev, pocet: pocet, url: url);
        burza.add(jidlo);
      }
    }
    return burza;
  }

  @override
  Future<Jidelnicek> objednatZBurzy(Burza b) async {
    if (!prihlasen) return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    try {
      await _getRequest("/faces/secured/${b.url!}");
    } catch (e) {
      if (isEnumItem(e, CanteenLibExceptions.values)) return Future.error(e);
      return Future.error(CanteenLibExceptions.chybaObjednani);
    }
    return jidelnicekDen(den: b.den);
  }
}
