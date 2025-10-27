import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/alergen.freezed.dart';
part 'generated/alergen.g.dart';

/// Popisuje alergen v jídelníčku
@freezed
sealed class Alergen with _$Alergen {
  const factory Alergen({@JsonKey(name: 'kod') int? kod, @JsonKey(name: 'nazev') required String nazev, @JsonKey(name: 'popis') String? popis}) =
      _Alergen;

  factory Alergen.fromJson(Map<String, Object?> json) => _$AlergenFromJson(json);
}
