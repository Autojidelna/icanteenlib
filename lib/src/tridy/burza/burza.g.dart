// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burza.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BurzaImpl _$$BurzaImplFromJson(Map<String, dynamic> json) => _$BurzaImpl(
      den: DateTime.parse(json['den'] as String),
      url: json['url'] as String?,
      nazev: json['nazev'] as String,
      pocet: (json['pocet'] as num).toInt(),
      varianta: json['varianta'] as String?,
    );

Map<String, dynamic> _$$BurzaImplToJson(_$BurzaImpl instance) =>
    <String, dynamic>{
      'den': instance.den.toIso8601String(),
      'url': instance.url,
      'nazev': instance.nazev,
      'pocet': instance.pocet,
      'varianta': instance.varianta,
    };
