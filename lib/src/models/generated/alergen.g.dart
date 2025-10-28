// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../alergen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Alergen _$AlergenFromJson(Map<String, dynamic> json) => _Alergen(
  id: (json['id'] as num?)?.toInt(),
  nazev: json['nazev'] as String,
  popis: json['popis'] as String?,
);

Map<String, dynamic> _$AlergenToJson(_Alergen instance) => <String, dynamic>{
  'id': instance.id,
  'nazev': instance.nazev,
  'popis': instance.popis,
};
