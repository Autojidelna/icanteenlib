import 'package:freezed_annotation/freezed_annotation.dart';

part 'jidlo_kategorizovano.freezed.dart';
part 'jidlo_kategorizovano.g.dart';

@freezed
class JidloKategorizovano with _$JidloKategorizovano {
  const factory JidloKategorizovano({
    @JsonKey(name: 'polevka') String? polevka,
    @JsonKey(name: 'hlavniJidlo') String? hlavniJidlo,
    @JsonKey(name: 'salatovyBar') String? salatovyBar,
    @JsonKey(name: 'piti') String? piti,
    @JsonKey(name: 'ostatni') String? ostatni,
  }) = _JidloKategorizovano;

  factory JidloKategorizovano.fromJson(Map<String, Object?> json) => _$JidloKategorizovanoFromJson(json);
}
