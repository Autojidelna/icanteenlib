// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stav_uctu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StavUctu _$StavUctuFromJson(Map<String, dynamic> json) => _StavUctu(
  kredit: (json['kredit'] as num?)?.toDouble() ?? 0.0,
  vydejna: (json['vydejna'] as num?)?.toInt(),
  vydejny:
      (json['vydejny'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ) ??
      const <int, String>{},
);

Map<String, dynamic> _$StavUctuToJson(_StavUctu instance) => <String, dynamic>{
  'kredit': instance.kredit,
  'vydejna': instance.vydejna,
  'vydejny': instance.vydejny.map((k, e) => MapEntry(k.toString(), e)),
};
