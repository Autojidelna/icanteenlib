// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jidelnicek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jidelnicek _$JidelnicekFromJson(Map<String, dynamic> json) => _Jidelnicek(
  DateTime.parse(json['den'] as String),
  (json['jidla'] as List<dynamic>)
      .map((e) => Jidlo.fromJson(e as Map<String, dynamic>))
      .toList(),
  vydejny:
      (json['vydejny'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$JidelnicekToJson(_Jidelnicek instance) =>
    <String, dynamic>{
      'den': instance.den.toIso8601String(),
      'jidla': instance.jidla.map((e) => e.toJson()).toList(),
      'vydejny': instance.vydejny.map((k, e) => MapEntry(k.toString(), e)),
    };
