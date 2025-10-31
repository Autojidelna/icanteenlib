// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../jidlo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jidlo _$JidloFromJson(Map<String, dynamic> json) => _Jidlo(
  objednano: json['objednano'] as bool,
  varianta: json['varianta'] as String,
  lzeObjednat: json['lzeObjednat'] as bool,
  naBurze: json['naBurze'] as bool,
  den: DateTime.parse(json['den'] as String),
  orderUrl: json['orderUrl'] as String?,
  burzaUrl: json['burzaUrl'] as String?,
);

Map<String, dynamic> _$JidloToJson(_Jidlo instance) => <String, dynamic>{
  'objednano': instance.objednano,
  'varianta': instance.varianta,
  'lzeObjednat': instance.lzeObjednat,
  'naBurze': instance.naBurze,
  'den': instance.den.toIso8601String(),
  'orderUrl': instance.orderUrl,
  'burzaUrl': instance.burzaUrl,
};
