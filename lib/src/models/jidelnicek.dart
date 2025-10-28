import 'package:icanteenlib/canteenlib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/jidelnicek.freezed.dart';
part 'generated/jidelnicek.g.dart';

/// Reprezentuje jídelníček pro jeden den
@freezed
sealed class Jidelnicek with _$Jidelnicek {
  const factory Jidelnicek({
    /// Den, pro který je jídelníček zveřejněn
    @JsonKey(name: 'datum') required DateTime datum,

    /// Seznam jídel
    @JsonKey(name: 'nabidka') @Default(<Jidlo>[]) List<Jidlo> nabidka,
  }) = _Jidelnicek;

  factory Jidelnicek.fromJson(Map<String, Object?> json) => _$JidelnicekFromJson(json);
}
