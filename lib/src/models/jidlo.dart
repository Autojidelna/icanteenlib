import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:icanteenlib/canteenlib.dart';

part 'generated/jidlo.freezed.dart';
part 'generated/jidlo.g.dart';

/// Reprezentuje jedno jídlo z jídelníčku
@freezed
sealed class Jidlo with _$Jidlo {
  const factory Jidlo({
    @JsonKey(name: 'datum') required DateTime datum,

    @JsonKey(name: 'stav') required StavJidla stav,

    @JsonKey(name: 'varianta') required String varianta,

    @JsonKey(name: 'nazev') required String nazev,

    /// Rozpis polévky, hlavního chodu atd.
    @JsonKey(name: 'slozeni_jidla') SlozeniJidla? slozeniJidla,

    /// Seznam alergenů
    ///
    /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
    @JsonKey(name: 'alergeny') @Default(<Alergen>[]) List<Alergen> alergeny,

    /// Název varianty (např. Oběd 2)
    @JsonKey(name: 'cena') double? cena,

    /// URL pro obědnání, vložení na burzu nebo na jinou akci
    @JsonKey(name: 'url') String? url,
  }) = _Jidlo;

  factory Jidlo.fromJson(Map<String, Object?> json) => _$JidloFromJson(json);
}
