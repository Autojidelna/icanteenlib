import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';
import 'package:icanteenlib/src/base_canteen.dart';
import 'package:icanteenlib/src/utils/utils.dart';

import 'package:http/http.dart' as http;

abstract class Canteen with HttpMixin, ParsingMixin {
  /// Obsahuje funkce, které nejsou podporovány bujď touto knihovnou,
  /// nebo online instancí iCanteenu
  FeatureSupport get featureSupport;

  // Url iCanteen
  String get url;

  /// Verze, pro kterou byla tato třída napsána
  String get verzeKnihovny;

  /// Verze iCanteenu zjištěná z webu
  String? get webVerze;

  /// Interní sledování stavu přihlášení
  bool get $uzivatelPrihlasen;

  StavUctu? _stavUctu;
  final _stavUctuController = StreamController<StavUctu?>.broadcast();

  /// Stream, na kterém se dají poslouchat změny stavu účtu
  Stream<StavUctu?> get stavUctuStream => _stavUctuController.stream;

  /// Snapshot stavu účtu
  StavUctu? get stavUctu => _stavUctu;

  /// Změní výdejnu, pokud to iCanteen instance nebo tato knihovna podporuje
  ///
  /// Je potřeba zavolat jakoukoliv funkci na získání jídelníčků, jinak tato metoda nemá efekt
  set zmenVydejnu(int id);

  /// ### **NEPOUŽÍVAT MIMO KNIHOVNU!**
  ///
  /// Interní metoda na nastavování stavu účtu, přidá hodnotu na [stavUctuStream] a [stavUctu].
  @protected
  set $setStavUctu(StavUctu newValue) {
    _stavUctu = newValue;
    _stavUctuController.add(newValue);
  }

  /// Vytvoří instanci pro [url]
  static Future<Canteen> create(String url) async {
    final Canteen? instance = await _CanteenVersionHandler.create(url);
    if (instance == null) throw Exception(CanteenLibExceptions.neplatneUrl);
    return instance;
  }

  /// Přihlášení do iCanteen
  ///
  /// Vstup:
  /// - `username` - uživatelské jméno | [String]
  /// - `password` - heslo | [String]
  ///
  /// Výstup:
  /// - [bool], v případě přihlášení `true`, v případě špatného hesla `false`
  /// - Chyba, pokud se nepodařilo přihlásit z jiného důvodu ([CanteenLibExceptions])
  Future<bool> login(String username, String password);

  /// Získá údaje o uživateli
  ///
  /// Výstup:
  ///  - Instance [UzivatelskeUdaje]
  Future<UzivatelskeUdaje> ziskejUzivatelskeUdaje();

  /// Aktualizuje [StavUctu]
  ///
  /// Vstup:
  /// - `res` - interní odpověď z [provedObjednavku] **NEPOUŽÍVAT MIMO KNIHOVNU**
  ///
  /// Výstup
  /// - Aktualizuje [stavUctu] a [stavUctuStream] na návratovou hodnotu
  Future<StavUctu> aktualizujStavUctu([String? res]);

  /// Získá aktuální jídla v burze. Nemělo by potřeba tuto funkci používat,
  /// protože ostatní metodu využívají tuto metodu na získání url pro [Jidlo].
  ///
  /// Výstup:
  /// - List instancí [Burza], každá obsahuje informace o jídle v burze
  Future<List<Burza>> ziskejBurzu();

  /// Získá jídelníček z přihlašovací stránky
  /// Tato feature není v prioritě, protože není moc užitečná.
  ///
  /// Výstup:
  /// - [List] s [Jidelnicek], který neobsahuje ceny
  ///
  /// __Lze použít bez přihlášení__
  Future<List<Jidelnicek>> verejneJidelnicky();

  /// Získá všechny nabízené jídelníčky
  ///
  /// __Vyžaduje přihlášení pomocí [login]__
  ///
  /// Výstup:
  /// - list instancí [Jidelnicek] obsahující detaily, které vidí přihlášený uživatel
  Future<List<Jidelnicek>> vsechnyJidelnicky();

  /// Získá jídlo pro daný den
  ///
  /// __Vyžaduje přihlášení pomocí [login]__
  ///
  /// Vstup:
  /// - `den` - *volitelné*, určuje pro jaký den chceme získat jídelníček | [DateTime]
  ///
  /// Výstup:
  /// - [Jidelnicek] obsahující detaily, které vidí přihlášený uživatel
  Future<Jidelnicek> specifickyJidelnicek(DateTime datum);

  /// Objedná vybrané jídlo. Dokáže i vložit/vzít jídlo z burzy
  ///
  /// Vstup:
  /// - `jidlo` - Jídlo, které chceme objednat | [Jidlo]
  ///
  /// Výstup:
  /// - Aktualizovaná instance [Jidlo] tohoto jídla
  Future<Jidelnicek> provedObjednavku(Jidlo jidlo);
}

/// Zpracuje verzi iCanteenu a najde nejlepší podporovanou verzi
class _CanteenVersionHandler {
  /// Mapa minimálně podporovaných verzí, knihovna by měla podporovat převážnou vetšinu vyšších verzí než jsou v této mapě
  final Map<String, Function(String, String)> canteenVersions = {
    '2.16.15': (url, webWerze) => Canteen2v16v15(url, webWerze),
    '2.18.03': (url, webWerze) => Canteen2v18v03(url, webWerze),
  };

  String url;

  _CanteenVersionHandler._(this.url);

  static Future<Canteen?> create(String url) async {
    final handler = _CanteenVersionHandler._(url);
    String verze = await handler._detectVersion();
    return handler._getClosestCanteenVersion(verze);
  }

  Future<String> _detectVersion() async {
    //získání verze
    String webHtml = '';
    RegExp versionPattern = RegExp(r'>iCanteen\s\d+\.\d+\.\d+\s\|');
    if (url.contains('https://')) {
      url = url.replaceAll('https://', '');
    }
    if (url.contains('http://')) {
      url = url.replaceAll('http://', '');
    }
    if (url.endsWith('/')) {
      url = url.substring(0, url.length - 1);
    }
    if (url.contains('@')) {
      url = url.substring(url.indexOf('@') + 1);
    }
    url = 'https://$url';
    try {
      http.Response res = await http.get(Uri.parse(url));
      webHtml = res.body;
    } catch (e) {
      try {
        url = url.replaceAll('https://', 'http://');
        http.Response res = await http.get(Uri.parse(url));
        webHtml = res.body;
      } catch (e) {
        throw Exception(CanteenLibExceptions.neplatneUrl);
      }
    }
    Iterable<Match> matches = versionPattern.allMatches(webHtml);
    try {
      String version = matches.first.group(0)!;
      version = version.replaceAll('>iCanteen ', '');
      version = version.replaceAll(' |', '');
      return version;
    } catch (e) {
      //pokud se nepodaří získat verzi, tak se nastaví na 0.0.0, abychom aspoň zkusili náhodné verze
      return '0.0.0';
    }
  }

  Canteen _getClosestCanteenVersion(String version) {
    if (canteenVersions[version] != null) {
      return canteenVersions[version]!(url, version);
    }

    List<int> current = version.split('.').map(int.parse).toList();
    List<String> available = canteenVersions.keys.toList();

    // Parse all available versions into tuples of [major, minor, patch]
    List<List<int>> parsed = available.map((v) => v.split('.').map(int.parse).toList()).toList();

    // Filter for versions <= current
    List<List<int>> lowerOrEqual = parsed.where((v) {
      for (int i = 0; i < 3; i++) {
        if (v[i] < current[i]) return true;
        if (v[i] > current[i]) return false;
      }
      return true;
    }).toList();

    if (lowerOrEqual.isEmpty) {
      // Fallback to the smallest available (if all are higher)
      return canteenVersions[available.first]!(url, version);
    }

    // Prefer same major+minor if possible
    lowerOrEqual.sort((a, b) {
      if (a[0] == current[0] && b[0] != current[0]) return -1;
      if (b[0] == current[0] && a[0] != current[0]) return 1;
      if (a[1] == current[1] && b[1] != current[1]) return -1;
      if (b[1] == current[1] && a[1] != current[1]) return 1;
      // Otherwise, sort by most recent
      for (int i = 0; i < 3; i++) {
        if (a[i] != b[i]) return b[i].compareTo(a[i]);
      }
      return 0;
    });

    String major = lowerOrEqual.first[0].toString();
    String minor = lowerOrEqual.first[1].toString().padLeft(2, '0');
    String patch = lowerOrEqual.first[2].toString().padLeft(2, '0');

    String best = '$major.$minor.$patch';
    return canteenVersions[best]!(url, version);
  }
}
