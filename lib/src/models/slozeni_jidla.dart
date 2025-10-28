import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/slozeni_jidla.freezed.dart';
part 'generated/slozeni_jidla.g.dart';

@freezed
sealed class SlozeniJidla with _$SlozeniJidla {
  const factory SlozeniJidla({
    @JsonKey(name: 'polevka') String? polevka,
    @JsonKey(name: 'hlavni_chod') String? hlavniChod,
    @JsonKey(name: 'salatovy_bar') String? salatovyBar,
    @JsonKey(name: 'piti') String? piti,
    @JsonKey(name: 'ostatni') String? ostatni,
  }) = _SlozeniJidla;

  factory SlozeniJidla.fromJson(Map<String, Object?> json) => _$SlozeniJidlaFromJson(json);
}
