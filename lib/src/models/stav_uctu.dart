import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/stav_uctu.freezed.dart';
part 'generated/stav_uctu.g.dart';

@freezed
sealed class StavUctu with _$StavUctu {
  const factory StavUctu({
    @JsonKey(name: 'kredit') @Default(0.0) double kredit,

    /// Poslední datum, kdy je objednané jídlo
    @JsonKey(name: 'objednano_do') DateTime? objednanoDo,

    /// Momentálně vybraná výdejna (id + název)
    @JsonKey(name: 'vydejna') (int, String)? vydejna,

    /// Seznam výdejen
    @JsonKey(name: 'vydejny') @Default(<int, String>{}) Map<int, String> vydejny,
  }) = _StavUctu;

  factory StavUctu.fromJson(Map<String, Object?> json) => _$StavUctuFromJson(json);
}
