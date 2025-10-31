import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';
import 'package:icanteenlib/src/canteen_versions.dart';
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
    List<int> currentVersion = version.split('.').map((e) => int.parse(e)).toList();
    List<String> versions = canteenVersions.keys.toList();
    for (int i = 2; i >= 0; i--) {
      versions.sort(((a, b) {
        List<int> aList = a.split('.').map((e) => int.parse(e)).toList();
        List<int> bList = b.split('.').map((e) => int.parse(e)).toList();
        return (currentVersion[i] - aList[i]).abs() - (currentVersion[i] - bList[i]).abs();
      }));
    }
    return canteenVersions[versions.first]!(url, version);
  }
}
