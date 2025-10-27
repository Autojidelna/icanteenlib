// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../jidlo_kategorizovano.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JidloKategorizovano _$JidloKategorizovanoFromJson(Map<String, dynamic> json) =>
    _JidloKategorizovano(
      polevka: json['polevka'] as String?,
      hlavniJidlo: json['hlavniJidlo'] as String?,
      salatovyBar: json['salatovyBar'] as String?,
      piti: json['piti'] as String?,
      ostatni: json['ostatni'] as String?,
    );

Map<String, dynamic> _$JidloKategorizovanoToJson(
  _JidloKategorizovano instance,
) => <String, dynamic>{
  'polevka': instance.polevka,
  'hlavniJidlo': instance.hlavniJidlo,
  'salatovyBar': instance.salatovyBar,
  'piti': instance.piti,
  'ostatni': instance.ostatni,
};
