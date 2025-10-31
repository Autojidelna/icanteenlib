import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/jidlo.freezed.dart';
part 'generated/jidlo.g.dart';

/// Reprezentuje jedno jídlo z jídelníčku
@freezed
sealed class Jidlo with _$Jidlo {
  const factory Jidlo({
    /// Objednal si uživatel toto jídlo?
    @JsonKey(name: 'objednano') required bool objednano,

    /// Název varianty
    @JsonKey(name: 'varianta') required String varianta,

    ///Lze objednat?
    @JsonKey(name: 'lzeObjednat') required bool lzeObjednat,

    /// Je jídlo aktuálně na burze?
    @JsonKey(name: 'naBurze') required bool naBurze,

    /// Den, který je jídlo vydáváno
    @JsonKey(name: 'den') required DateTime den,

    /// URL pro požadavek na objednání jídla
    @JsonKey(name: 'orderUrl') String? orderUrl,

    /// URL pro vložení jídla na burzu
    @JsonKey(name: 'burzaUrl') String? burzaUrl,
  }) = _Jidlo;

  factory Jidlo.fromJson(Map<String, Object?> json) => _$JidloFromJson(json);
}
