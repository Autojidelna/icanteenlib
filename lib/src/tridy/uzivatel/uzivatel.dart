import 'package:freezed_annotation/freezed_annotation.dart';

part 'uzivatel.freezed.dart';
part 'uzivatel.g.dart';

/// Reprezentuje informace o přihlášeném uživateli
@freezed
class Uzivatel with _$Uzivatel {
  const factory Uzivatel({
    /// Uživatelské jméno
    @JsonKey(name: 'uzivatelskeJmeno') String? uzivatelskeJmeno,

    /// Jméno, jak je uvedené v základních údajích o uživateli
    @JsonKey(name: 'jmeno') String? jmeno,

    /// Příjmení, jak je uvedené v základních údajích o uživateli
    @JsonKey(name: 'prijmeni') String? prijmeni,

    /// Kategorie uživatele
    @JsonKey(name: 'kategorie') String? kategorie,

    /// Účet jídelny pro zasílání plateb
    @JsonKey(name: 'ucetProPlatby') String? ucetProPlatby,

    /// Variabilní symbol
    @JsonKey(name: 'varSymbol') String? varSymbol,

    /// Specifický symbol
    @JsonKey(name: 'specSymbol') String? specSymbol,

    /// Aktuální stav kreditu
    @JsonKey(name: 'kredit') @Default(0) double kredit,
  }) = _Uzivatel;

  factory Uzivatel.fromJson(Map<String, Object?> json) => _$UzivatelFromJson(json);
}
