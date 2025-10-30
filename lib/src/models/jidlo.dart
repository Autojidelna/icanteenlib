import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';

part 'generated/jidlo.freezed.dart';
part 'generated/jidlo.g.dart';

/// Reprezentuje jedno jídlo z jídelníčku
@freezed
sealed class Jidlo with _$Jidlo {
  const factory Jidlo({
    @JsonKey(name: 'datum') required DateTime datum,

    /// Objednáno, na burze atd.
    @JsonKey(name: 'stav') required StavJidla stav,

    /// Název varianty (např. Oběd 2)
    @JsonKey(name: 'varianta') required String varianta,

    @JsonKey(name: 'nazev') required String nazev,

    /// Rozpis polévky, hlavního chodu atd.
    @JsonKey(name: 'slozeni_jidla') SlozeniJidla? slozeniJidla,

    /// Seznam alergenů
    ///
    /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
    @JsonKey(name: 'alergeny') @Default(<Alergen>[]) List<Alergen> alergeny,

    @JsonKey(name: 'cena') double? cena,

    /// Počet zbývajících kusů na burze
    @JsonKey(name: 'pocet') int? pocet,

    /// URL pro obědnání, vložení na burzu nebo na jinou akci
    @JsonKey(name: 'url') String? url,
  }) = _Jidlo;

  factory Jidlo.fromJson(Map<String, Object?> json) => _$JidloFromJson(json);
}
