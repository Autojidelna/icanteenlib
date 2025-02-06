// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alergen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlergenImpl _$$AlergenImplFromJson(Map<String, dynamic> json) =>
    _$AlergenImpl(
      kod: (json['kod'] as num?)?.toInt(),
      nazev: json['nazev'] as String,
      popis: json['popis'] as String?,
    );

Map<String, dynamic> _$$AlergenImplToJson(_$AlergenImpl instance) =>
    <String, dynamic>{
      'kod': instance.kod,
      'nazev': instance.nazev,
      'popis': instance.popis,
    };
