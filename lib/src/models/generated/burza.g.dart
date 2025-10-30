// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../burza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Burza _$BurzaFromJson(Map<String, dynamic> json) => _Burza(
  datum: DateTime.parse(json['datum'] as String),
  url: json['url'] as String?,
  vydejna: _$recordConvertNullable(
    json['vydejna'],
    ($jsonValue) =>
        (($jsonValue[r'$1'] as num).toInt(), $jsonValue[r'$2'] as String),
  ),
  popis: json['popis'] as String,
  pocet: (json['pocet'] as num).toInt(),
  varianta: json['varianta'] as String?,
);

Map<String, dynamic> _$BurzaToJson(_Burza instance) => <String, dynamic>{
  'datum': instance.datum.toIso8601String(),
  'url': instance.url,
  'vydejna': instance.vydejna == null
      ? null
      : <String, dynamic>{
          r'$1': instance.vydejna!.$1,
          r'$2': instance.vydejna!.$2,
        },
  'popis': instance.popis,
  'pocet': instance.pocet,
  'varianta': instance.varianta,
};

$Rec? _$recordConvertNullable<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) => value == null ? null : convert(value as Map<String, dynamic>);
