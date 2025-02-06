import 'package:canteenlib/canteenlib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'jidelnicek.freezed.dart';
part 'jidelnicek.g.dart';

/// Reprezentuje jídelníček pro jeden den
@freezed
class Jidelnicek with _$Jidelnicek {
  const factory Jidelnicek(
    /// Den, pro který je jídelníček zveřejněn
    @JsonKey(name: 'den') DateTime den,

    /// Seznam jídel
    @JsonKey(name: 'jidla') List<Jidlo> jidla, {
    // Seznam výdejen (je prázdný, pokud je pouze jedna)
    @JsonKey(name: 'vydejny') @Default({}) Map<int, String> vydejny,
  }) = _Jidelnicek;

  factory Jidelnicek.fromJson(Map<String, Object?> json) => _$JidelnicekFromJson(json);
}
