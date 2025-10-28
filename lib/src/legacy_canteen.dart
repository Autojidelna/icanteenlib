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
import 'package:icanteenlib/legacy.dart' as legacy;
import 'package:icanteenlib/canteenlib.dart';
import 'legacy_canteen_versions.dart';

import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class Canteen {
  /// Seznam chybějících funkcí pro danou verzi iCanteenu - funkce, které nejsou ve vanilla webové verzi iCanteenu nebo nejsou podporovány
  List<Features> missingFeatures = [];

  /// URL iCanteenu
  String _url;
  String get url => _url;

  /// verze iCanteenu
  String? _verze;

  /// verze iCanteenu
  String? get verze => _verze;

  /// Instance třídy pro správnou verzi iCanteenu
  Canteen? _canteenInstance;

  Canteen(this._url);

  /// Je uživatel přihlášen?
  bool get prihlasen => _canteenInstance?.prihlasen ?? false;

  int get vydejna => _canteenInstance?.vydejna ?? 1;
  set vydejna(int value) {
    if (_canteenInstance != null) {
      _canteenInstance!.vydejna = value;
    }
  }

  ///zpracuje jídlo a rozdělí ho na kategorie (hlavní jídlo, polévka, salátový bar, pití...)
  legacy.JidloKategorizovano parseJidlo(String jidlo) {
    List<String> cistyListJidel = jidlo.split(',');
    for (int i = 0; i < cistyListJidel.length; i++) {
      cistyListJidel[i] = cistyListJidel[i].trimLeft();
    }
    //konstantní řetězce pro kategorizaci
    List<String> polevky = [
      'Polévka',
      'Polívka',
      'zeleninový krém',
      'fridátové nudle',
      'vývar',
      'frit. n' /*fritované nudle*/,
      'frit.n' /*fritované nudle*/,
    ];
    List<String> salatoveBary = ['salát', 'kompot'];
    List<String> piticka = [
      'nápoj',
      'napoj',
      'čaj',
      'caj',
      'káva',
      'kava',
      'mošt',
      'most',
      'sirup',
      'voda',
      'mléko',
      'mleko',
      'vit. nápoj' /*vitamínový nápoj*/,
      'vit.nápoj' /*vitamínový nápoj*/,
      'džus',
      'dzus',
      'kakao',
    ];
    List<String> ostatniVeci = [
      'ovoce',
      'pečivo',
      'pecivo',
      'chléb',
      'chleb',
      'rohlík',
      'rohlik',
      'tyčinka',
      'tycinka',
      'dezert',
      'termix',
      'tvarohá' /*Tvaroháček/Tvaroháčky*/,
      'tvaroha' /*tvaroháček/tvaroháčky*/,
      'šáteč' /*šáteček/šátečky */,
      'satec' /*šáteček/šátečky */,
      'šateč',
      'šatec',
      'sateč',
    ];

    bool kategorie(String vec, List<String> kategorie) {
      for (int i = 0; i < kategorie.length; i++) {
        if (vec.toLowerCase().contains(kategorie[i].toLowerCase())) {
          return true;
        }
      }
      return false;
    }

    String polevka = '';
    String hlavniJidlo = '';
    String salatovyBar = '';
    String piti = '';
    String ostatni = '';
    for (int i = 0; i < cistyListJidel.length; i++) {
      if (kategorie(cistyListJidel[i], polevky)) {
        if (polevka != '') {
          polevka += ', ';
        }
        polevka = '$polevka${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], salatoveBary)) {
        if (salatovyBar != '') {
          salatovyBar += ', ';
        }
        salatovyBar = '$salatovyBar${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], piticka)) {
        if (piti != '') {
          piti += ', ';
        }
        piti = '$piti${cistyListJidel[i]}';
      } else if (kategorie(cistyListJidel[i], ostatniVeci) && !cistyListJidel[i].contains('ovocem')) {
        if (ostatni != '') {
          ostatni += ', ';
        }
        ostatni = '$ostatni${cistyListJidel[i]}';
      } else {
        if (hlavniJidlo != '') {
          hlavniJidlo += ', ';
        }
        hlavniJidlo = '$hlavniJidlo${cistyListJidel[i]}';
      }
    }
    hlavniJidlo = hlavniJidlo.trimLeft();
    polevka = polevka.trimLeft();
    piti = piti.trimLeft();
    salatovyBar = salatovyBar.trimLeft();
    ostatni = ostatni.trimLeft();
    //jídelny mají prý rádi saláty jako hlavní jídlo. Tohle je pro to fix:
    if (hlavniJidlo == '') {
      for (String jidlo in salatovyBar.split(', ')) {
        if (jidlo.contains('salát')) {
          hlavniJidlo = jidlo;
          salatovyBar = salatovyBar.replaceAll('$jidlo, ', '');
          salatovyBar = salatovyBar.replaceAll(jidlo, '');
          break;
        }
      }
    }
    if (polevka != '') {
      //make first letter of polevka capital
      polevka = polevka.substring(0, 1).toUpperCase() + polevka.substring(1);
    }
    if (ostatni != '') {
      //make first letter of ostatni capital
      ostatni = ostatni.substring(0, 1).toUpperCase() + ostatni.substring(1);
    }
    if (hlavniJidlo != '') {
      //make first letter of hlavniJidlo capital
      hlavniJidlo = hlavniJidlo.substring(0, 1).toUpperCase() + hlavniJidlo.substring(1);
      if (hlavniJidlo.length > 3 && hlavniJidlo.substring(0, 3) == 'N. ') {
        hlavniJidlo = hlavniJidlo.substring(3);
      }
    }
    if (piti != '') {
      //make first letter of piti capital
      piti = piti.substring(0, 1).toUpperCase() + piti.substring(1);
    }
    if (salatovyBar != '') {
      //make first letter of salatovyBar capital
      salatovyBar = salatovyBar.substring(0, 1).toUpperCase() + salatovyBar.substring(1);
    }
    return legacy.JidloKategorizovano(polevka: polevka, hlavniJidlo: hlavniJidlo, salatovyBar: salatovyBar, piti: piti, ostatni: ostatni);
  }

  String cleanString(String string) {
    string = string.replaceAll('\n', '');
    string = string.replaceAll('\t', '');
    string = string.replaceAll('\r', '');
    string = string.replaceAll('  ', ' ');
    string = string.replaceAll(' * ,', ',');
    string = string.replaceAll(' *,', ',');
    string = string.replaceAll(' *', '');
    string = string.replaceAll('*', '');
    string = string.replaceAll(' :', '');
    string = string.replaceAll(':', '');
    string = string.replaceAll(' ,', ',');
    string = string.trim();
    return string;
  }

  String parseHtmlString(String htmlString) {
    try {
      final dom.Document document = parser.parse(htmlString);
      final String parsedString = parser.parse(document.body!.text).documentElement!.text;
      return parsedString;
    } catch (e) {
      return htmlString;
    }
  }

  Function(String) _getClosestCanteenVersion(String version) {
    if (canteenVersions[version] != null) {
      return canteenVersions[version]!;
    }
    List<int> currentVersion = version.split('.').map((e) => int.parse(e)).toList();
    List<String> versions = canteenVersions.keys.toList();
    for (int i = 2; i >= 0; i--) {
      versions.sort(((a, b) {
        List<int> aList = a.split('.').map((e) => int.parse(e)).toList();
        List<int> bList = b.split('.').map((e) => int.parse(e)).toList();
        return (currentVersion[i] - aList[i]).abs() - (currentVersion[i] - bList[i]).abs();
      }));
    }
    return canteenVersions[versions.first]!;
  }

  /// Získá verzi třídy pro verzi icanteenu
  Future<bool> _spravovatelVerzi({legacy.LoginData? loginData}) async {
    _canteenInstance = _getClosestCanteenVersion(_verze!)(_url);
    if (loginData != null) {
      try {
        await _canteenInstance!.login(loginData.username, loginData.password);
      } catch (e) {
        Object? error;
        for (final canteenVersion in canteenVersions.values) {
          _canteenInstance = canteenVersion(_url);
          try {
            await _canteenInstance!.login(loginData.username, loginData.password);
            error = null;
            break;
          } catch (e) {
            error = e;
            continue;
          }
        }
        if (error != null) {
          return Future.error(error);
        }
      }
    }
    missingFeatures = _canteenInstance!.missingFeatures;
    return prihlasen;
  }

  /// Získá první instanci (případně ji přihlásí) a zjistí verzi
  Future<bool> _ziskatInstanciProVerzi({legacy.LoginData? loginData}) async {
    //získání verze
    String webHtml = '';
    RegExp versionPattern = RegExp(r'>iCanteen\s\d+\.\d+\.\d+\s\|');
    if (_url.contains('https://')) {
      _url = _url.replaceAll('https://', '');
    }
    if (_url.contains('http://')) {
      _url = _url.replaceAll('http://', '');
    }
    if (_url.endsWith('/')) {
      _url = _url.substring(0, _url.length - 1);
    }
    if (_url.contains('@')) {
      _url = _url.substring(_url.indexOf('@') + 1);
    }
    _url = 'https://$_url';
    try {
      var res = await http.get(Uri.parse(_url));
      webHtml = res.body;
    } catch (e) {
      try {
        _url = _url.replaceAll('https://', 'http://');
        var res = await http.get(Uri.parse(_url));
        webHtml = res.body;
      } catch (e) {
        return Future.error(CanteenLibExceptions.neplatneUrl);
      }
    }
    Iterable<Match> matches = versionPattern.allMatches(webHtml);
    try {
      String version = matches.first.group(0)!;
      version = version.replaceAll('>iCanteen ', '');
      version = version.replaceAll(' |', '');
      _verze = version;
    } catch (e) {
      //pokud se nepodaří získat verzi, tak se nastaví na 0.0.0, abychom aspoň zkusili náhodné verze
      _verze = '0.0.0';
    }
    //vracení správné verze classy:
    return _spravovatelVerzi(loginData: loginData);
  }

  /// Přihlášení do iCanteen
  ///
  /// Vstup:
  ///
  /// - `user` - uživatelské jméno | [String]
  /// - `password` - heslo | [String]
  ///
  /// Výstup:
  /// - [bool] ve [Future], v případě přihlášení `true`, v případě špatného hesla `false`
  /// - [Future] s chybou, pokud se nepodařilo přihlásit z jiného důvodu ([CanteenLibExceptions])
  Future<bool> login(String user, String password) async {
    return _ziskatInstanciProVerzi(loginData: legacy.LoginData(user, password));
  }

  /*--------funkce specifické pro verze--------*/

  /// Získá jídelníček bez cen
  /// Tato feature není v prioritě, protože není moc užitečná. Je u ní menší šance, že bude fungovat pokud není v podporovaných verzích.
  ///
  /// Výstup:
  /// - [List] s [Jidelnicek], který neobsahuje ceny
  ///
  /// __Lze použít bez přihlášení__
  Future<List<legacy.Jidelnicek>> verejnyJidelnicek() async {
    if (_canteenInstance != null) {
      return _canteenInstance!.verejnyJidelnicek();
    }
    if (_canteenInstance!.missingFeatures.contains(Features.verejnyJidelnicek)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    try {
      await _ziskatInstanciProVerzi();
    } catch (e) {
      return Future.error(e);
    }
    return _canteenInstance!.verejnyJidelnicek();
  }

  /// Získá jídlo pro daný den
  ///
  /// __Vyžaduje přihlášení pomocí [login]__
  ///
  /// Vstup:
  /// - `den` - *volitelné*, určuje pro jaký den chceme získat jídelníček | [DateTime]
  ///
  /// Výstup:
  /// - [Jidelnicek] obsahující detaily, které vidí přihlášený uživatel
  Future<legacy.Jidelnicek> jidelnicekDen({DateTime? den}) async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.jidelnicekDen)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.jidelnicekDen(den: den);
  }

  /// Získá jídlo do konce měsíce od aktuálního dne
  ///
  /// __Vyžaduje přihlášení pomocí [login]__
  ///
  /// Výstup:
  /// - list instancí [Jidelnicek] obsahující detaily, které vidí přihlášený uživatel
  Future<List<legacy.Jidelnicek>> jidelnicekMesic() async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.vsechnyJidelnicky)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.jidelnicekMesic();
  }

  /// Vrátí informace o uživateli ve formě instance [Uzivatel]
  Future<legacy.Uzivatel> ziskejUzivatele() async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.uzivatelskeUdaje)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.ziskejUzivatele();
  }

  /// Objedná vybrané jídlo
  ///
  /// Vstup:
  /// - `jidlo` - Jídlo, které chceme objednat | [Jidlo]
  ///
  /// Výstup:
  /// - Aktualizovaná instance [Jidlo] tohoto jídla
  Future<legacy.Jidelnicek> objednat(legacy.Jidlo jidlo) async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    return _canteenInstance!.objednat(jidlo);
  }

  /// Uloží vaše jídlo z/do burzy
  ///
  /// Vstup:
  /// - `jidlo` - Jídlo, které chceme dát/vzít do/z burzy | [Jidlo]
  ///
  /// Výstup:
  /// - Aktualizovaná instance [Jidlo] tohoto jídla NEBO [Future] jako chyba
  Future<legacy.Jidelnicek> doBurzy(legacy.Jidlo jidlo, {int amount = 1}) async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.burza)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.doBurzy(jidlo, amount: amount);
  }

  /// Získá aktuální jídla v burze
  ///
  /// Výstup:
  /// - List instancí [Burza], každá obsahuje informace o jídle v burze
  Future<List<legacy.Burza>> ziskatBurzu() async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.burza)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.ziskatBurzu();
  }

  /// Objedná jídlo z burzy pomocí URL z instance třídy Burza
  ///
  /// Vstup:
  /// - `b` - Jídlo __z burzy__, které chceme objednat | [Burza]
  ///
  /// Výstup:
  /// - [bool], `true`, pokud bylo jídlo úspěšně objednáno z burzy, jinak `Exception`
  Future<legacy.Jidelnicek> objednatZBurzy(legacy.Burza b) async {
    if (_canteenInstance == null) {
      return Future.error(CanteenLibExceptions.jePotrebaSePrihlasit);
    }
    if (_canteenInstance!.missingFeatures.contains(Features.burza)) {
      return Future.error(CanteenLibExceptions.featureNepodporovana);
    }
    return _canteenInstance!.objednatZBurzy(b);
  }
}
