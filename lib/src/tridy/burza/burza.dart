import 'package:freezed_annotation/freezed_annotation.dart';

part 'burza.freezed.dart';
part 'burza.g.dart';

/// Reprezentuje cizí jídlo na burze
@freezed
class Burza with _$Burza {
  const factory Burza({
    /// Den, který je jídlo vydáváno
    @JsonKey(name: 'den') required DateTime den,

    /// URL pro objednání
    @JsonKey(name: 'url') required String? url,

    /// Název jídla
    @JsonKey(name: 'nazev') required String nazev,

    /// Počet kusů tohoto jídla dostupného na burze
    @JsonKey(name: 'pocet') required int pocet,

    /// Varianta
    @JsonKey(name: 'varianta') String? varianta,
  }) = _Burza;

  factory Burza.fromJson(Map<String, Object?> json) => _$BurzaFromJson(json);
}
