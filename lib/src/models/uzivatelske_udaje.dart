import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/uzivatelske_udaje.freezed.dart';
part 'generated/uzivatelske_udaje.g.dart';

/// Reprezentuje informace o přihlášeném uživateli
@freezed
sealed class UzivatelskeUdaje with _$UzivatelskeUdaje {
  const factory UzivatelskeUdaje({
    @JsonKey(name: _Keys.jmeno) String? jmeno,
    @JsonKey(name: _Keys.prijmeni) String? prijmeni,
    @JsonKey(name: _Keys.datumNarozeni) String? datumNarozeni,
    @JsonKey(name: _Keys.kategorie) String? kategorie,
    @JsonKey(name: _Keys.skupina) String? slupina,
    @JsonKey(name: _Keys.trida) String? trida,
    @JsonKey(name: _Keys.osobniCislo) String? osobniCislo,
    @JsonKey(name: _Keys.evidencniCislo) String? evidencniCislo,
    @JsonKey(name: _Keys.adresa) String? adresa,
    @JsonKey(name: _Keys.mesto) String? mesto,
    @JsonKey(name: _Keys.psc) String? psc,
    @JsonKey(name: _Keys.telefon) String? telefon,
    @JsonKey(name: _Keys.email) String? email,
    @JsonKey(name: _Keys.variabilniSymbol) String? variabilniSymbol,
    @JsonKey(name: _Keys.specifickySymbol) String? specifickySymbol,
    @JsonKey(name: _Keys.ucetProPlatby) String? ucetProPlatbyDoJidelny,
    @JsonKey(name: _Keys.ucetProVraceniPreplatku) String? ucetProVraceniPreplatku,
  }) = _UzivatelskeUdaje;

  factory UzivatelskeUdaje.fromJson(Map<String, Object?> json) => _$UzivatelskeUdajeFromJson(json);
}

enum UzivatelskeUdajeKeys {
  jmeno(_Keys.jmeno),
  prijmeni(_Keys.prijmeni),
  datumNarozeni(_Keys.datumNarozeni),
  kategorie(_Keys.kategorie),
  skupina(_Keys.skupina),
  trida(_Keys.trida),
  osobniCislo(_Keys.osobniCislo),
  evidencniCislo(_Keys.evidencniCislo),
  adresa(_Keys.adresa),
  mesto(_Keys.mesto),
  psc(_Keys.psc),
  telefon(_Keys.telefon),
  email(_Keys.email),
  variabilniSymbol(_Keys.variabilniSymbol),
  specifickySymbol(_Keys.specifickySymbol),
  ucetProPlatbyDoJidelny(_Keys.ucetProPlatby),
  ucetProVraceniPreplatkuJidelnou(_Keys.ucetProVraceniPreplatku);

  final String _key;
  const UzivatelskeUdajeKeys(this._key);

  @override
  String toString() => _key;
}

class _Keys {
  static const jmeno = 'jmeno';
  static const prijmeni = 'prijmeni';
  static const datumNarozeni = 'datum_narozeni';
  static const kategorie = 'kategorie';
  static const skupina = 'skupina';
  static const trida = 'trida';
  static const osobniCislo = 'osobni_cislo';
  static const evidencniCislo = 'evidencni_cislo';
  static const adresa = 'adresa';
  static const mesto = 'mesto';
  static const psc = 'psc';
  static const telefon = 'telefon';
  static const email = 'email';
  static const variabilniSymbol = 'variabilni_symbol';
  static const specifickySymbol = 'specificky_symbol';
  static const ucetProPlatby = 'ucet_pro_platby_do_jidelny';
  static const ucetProVraceniPreplatku = 'ucet_pro_vraceni_preplatku_jidelnou';
}
