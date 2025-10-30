// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stav_uctu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StavUctu _$StavUctuFromJson(Map<String, dynamic> json) => _StavUctu(
  kredit: (json['kredit'] as num?)?.toDouble() ?? 0.0,
  objednanoDo: json['objednano_do'] == null
      ? null
      : DateTime.parse(json['objednano_do'] as String),
  vydejna: _$recordConvertNullable(
    json['vydejna'],
    ($jsonValue) =>
        (($jsonValue[r'$1'] as num).toInt(), $jsonValue[r'$2'] as String),
  ),
  vydejny:
      (json['vydejny'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ) ??
      const <int, String>{},
);

Map<String, dynamic> _$StavUctuToJson(_StavUctu instance) => <String, dynamic>{
  'kredit': instance.kredit,
  'objednano_do': instance.objednanoDo?.toIso8601String(),
  'vydejna': instance.vydejna == null
      ? null
      : <String, dynamic>{
          r'$1': instance.vydejna!.$1,
          r'$2': instance.vydejna!.$2,
        },
  'vydejny': instance.vydejny.map((k, e) => MapEntry(k.toString(), e)),
};

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) => value == null ? null : convert(value as Map<String, dynamic>);
