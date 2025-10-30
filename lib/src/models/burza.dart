import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/burza.freezed.dart';
part 'generated/burza.g.dart';

/// Reprezentuje cizí jídlo na burze
@freezed
@protected
sealed class Burza with _$Burza {
  const factory Burza({
    @JsonKey(name: 'datum') required DateTime datum,

    /// URL pro objednání
    @JsonKey(name: 'url') required String? url,

    @JsonKey(name: 'vydejna') (int, String)? vydejna,

    /// Celý neupravený popis jídla
    @JsonKey(name: 'popis') required String popis,

    /// Počet kusů tohoto jídla dostupného na burze
    @JsonKey(name: 'pocet') required int pocet,

    /// Název varianty (např. Oběd 2)
    @JsonKey(name: 'varianta') String? varianta,
  }) = _Burza;

  factory Burza.fromJson(Map<String, Object?> json) => _$BurzaFromJson(json);
}
