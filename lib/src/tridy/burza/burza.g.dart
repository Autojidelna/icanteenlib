// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Burza _$BurzaFromJson(Map<String, dynamic> json) => _Burza(
  den: DateTime.parse(json['den'] as String),
  url: json['url'] as String?,
  nazev: json['nazev'] as String,
  pocet: (json['pocet'] as num).toInt(),
  varianta: json['varianta'] as String?,
);

Map<String, dynamic> _$BurzaToJson(_Burza instance) => <String, dynamic>{
  'den': instance.den.toIso8601String(),
  'url': instance.url,
  'nazev': instance.nazev,
  'pocet': instance.pocet,
  'varianta': instance.varianta,
};
