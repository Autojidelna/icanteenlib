import 'package:icanteenlib/canteenlib.dart';

import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

part 'version_specific/canteen_2_16_15.dart';
part 'version_specific/canteen_2_18_03.dart';

abstract class BaseCanteen extends Canteen {
  BaseCanteen(this._url, this._webVerze);

  @override
  String get url => _url;
  final String _url;

  @override
  String? get webVerze => _webVerze;
  final String _webVerze;

  @override
  bool get $uzivatelPrihlasen => _uzivatelPrihlasen;
  bool _uzivatelPrihlasen = false;

  @override
  set zmenVydejnu(int id) => _novaVydejnaId = id;
  int _novaVydejnaId = 1;

  /// Sušenky potřebné pro komunikaci
  Map<String, String> _cookies = {};

  // Tyto funkce jsou pouze definované, je potřeba [override] z tříd pro dané verze
  Future<http.Response> _loginPostRequest(PrihlasovaciUdaje udaje) => throw UnimplementedError();
  String _strankaNastaveniPath() => throw UnimplementedError();
  String _strankaBurzyPath() => throw UnimplementedError();
  String _strankaVsechJidelnickuPath() => throw UnimplementedError();
  String _strankaSpecifickyJidelnicekPath(DateTime datum) => throw UnimplementedError();
  String _objednejJidloPath(Jidlo jidlo, int pocetDoBurzy) => throw UnimplementedError();

  Future<void> _firstSessionCheck() async {
    if (_cookies["JSESSIONID"] == "" || _cookies["XSRF-TOKEN"] == "") {
      try {
        await $getFirstSession(url, _cookies);
      } catch (e) {
        rethrow;
      }
    }
  }

  String _buildCookieHeader() => _cookies.entries.map((e) => '${e.key}=${e.value}').join('; ');
  Future<String> _getRequest(String path) async => await $getRequest(url, path, _buildCookieHeader(), _cookies);

  @override
  Future<bool> login(String username, String password) async {
    await _firstSessionCheck();

    http.Response res;
    try {
      res = await _loginPostRequest(PrihlasovaciUdaje(username, password));
    } catch (e) {
      throw Exception(CanteenLibExceptions.chybaSite);
    }

    if (res.headers['set-cookie']!.contains("remember-me=;")) return false; // špatné heslo
    if (res.statusCode != 302) throw Exception("Chyba: ${res.body}");

    $parseCookies(res.headers['set-cookie']!, _cookies);

    _uzivatelPrihlasen = true;
    return true;
  }

  @override
  Future<UzivatelskeUdaje> ziskejUzivatelskeUdaje() async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);
    String res;
    try {
      res = await _getRequest(_strankaNastaveniPath());
    } catch (e) {
      rethrow;
    }

    final dom.Document document = parser.parse(res);
    final Map<UzivatelskeUdajeKeys, String?> userData = $parseUzivatelskeUdaje(document);

    return UzivatelskeUdaje(
      jmeno: userData[UzivatelskeUdajeKeys.jmeno],
      prijmeni: userData[UzivatelskeUdajeKeys.prijmeni],
      datumNarozeni: userData[UzivatelskeUdajeKeys.datumNarozeni],
      kategorie: userData[UzivatelskeUdajeKeys.kategorie],
      skupina: userData[UzivatelskeUdajeKeys.skupina],
      trida: userData[UzivatelskeUdajeKeys.trida],
      osobniCislo: userData[UzivatelskeUdajeKeys.osobniCislo],
      evidencniCislo: userData[UzivatelskeUdajeKeys.evidencniCislo],
      adresa: userData[UzivatelskeUdajeKeys.adresa],
      mesto: userData[UzivatelskeUdajeKeys.mesto],
      psc: userData[UzivatelskeUdajeKeys.psc],
      telefon: userData[UzivatelskeUdajeKeys.telefon],
      email: userData[UzivatelskeUdajeKeys.email],
      variabilniSymbol: userData[UzivatelskeUdajeKeys.variabilniSymbol],
      specifickySymbol: userData[UzivatelskeUdajeKeys.specifickySymbol],
      ucetProPlatbyDoJidelny: userData[UzivatelskeUdajeKeys.ucetProPlatbyDoJidelny],
      ucetProVraceniPreplatku: userData[UzivatelskeUdajeKeys.ucetProVraceniPreplatkuJidelnou],
    );
  }

  @override
  Future<StavUctu> aktualizujStavUctu([String? res]) async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);
    if (res == null) {
      try {
        res = await _getRequest(_strankaNastaveniPath());
      } catch (e) {
        rethrow;
      }
    }
    final dom.Document document = parser.parse(res);
    StavUctu stavUctu = $parseStavUctu(document);
    $setStavUctu = stavUctu;

    return stavUctu;
  }

  @override
  Future<List<Burza>> ziskejBurzu() async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);
    String res;
    try {
      res = await _getRequest(_strankaBurzyPath());
    } catch (e) {
      rethrow;
    }

    final dom.Document document = parser.parse(res);
    List<Burza> burza = $parseBurza(document);

    return burza;
  }

  @override
  Future<List<Jidelnicek>> verejneJidelnicky() async {
    String res;
    try {
      res = await _getRequest('/');
    } catch (e) {
      throw Exception(e);
    }

    final dom.Document document = parser.parse(res);
    return $parseVerejnyJidelnicky(document);
  }

  @override
  Future<List<Jidelnicek>> vsechnyJidelnicky() async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);

    String res;
    try {
      res = await _getRequest(_strankaVsechJidelnickuPath());
    } catch (e) {
      rethrow;
    }

    final dom.Document document = parser.parse(res);
    List<Burza> burza = await ziskejBurzu();
    List<Jidlo> jidla = [];

    List<dom.Element> rawJidla = $parseJidloWrapperElements(document);
    for (dom.Element rawJidlo in rawJidla) {
      jidla.add($parsePrihlasenyJidlo(rawJidlo, burza));
    }

    Map<DateTime, List<Jidlo>> jidlaMap = {};
    for (Jidlo jidlo in jidla) {
      if (jidlaMap.containsKey(jidlo.datum)) {
        jidlaMap[jidlo.datum]!.add(jidlo);
      } else {
        jidlaMap[jidlo.datum] = [jidlo];
      }
    }

    List<Jidelnicek> jidelnicekList = [];
    for (List<Jidlo> jidelnicek in jidlaMap.values) {
      jidelnicekList.add(Jidelnicek(datum: jidelnicek[0].datum, nabidka: jidelnicek));
    }
    return jidelnicekList;
  }

  @override
  Future<Jidelnicek> specifickyJidelnicek(DateTime datum) async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);

    String res;
    try {
      res = await _getRequest(_strankaSpecifickyJidelnicekPath(datum));
    } catch (e) {
      rethrow;
    }

    final dom.Document document = parser.parse(res);
    List<Burza> burza = await ziskejBurzu();
    List<Jidlo> jidla = <Jidlo>[];

    List<dom.Element> rawJidla = $parseJidloWrapperElements(document);
    for (dom.Element obed in rawJidla) {
      jidla.add($parsePrihlasenyJidlo(obed, burza));
    }

    return Jidelnicek(datum: datum, nabidka: jidla);
  }

  @override
  Future<Jidelnicek> provedObjednavku(Jidlo jidlo, {int pocetDoBurzy = 1}) async {
    if (!_uzivatelPrihlasen) throw Exception(CanteenLibExceptions.jePotrebaSePrihlasit);

    if (jidlo.url != null && jidlo.stav.muzesObjednat()) throw Exception(CanteenLibExceptions.jidloNelzeObjednat);

    String res;
    try {
      res = await _getRequest(_objednejJidloPath(jidlo, pocetDoBurzy));
    } catch (e) {
      if (CanteenLibExceptions.values.contains(e)) rethrow;
      throw Exception(CanteenLibExceptions.chybaObjednani);
    }

    aktualizujStavUctu(res);
    return await specifickyJidelnicek(jidlo.datum);
  }
}
