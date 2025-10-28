// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../slozeni_jidla.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SlozeniJidla _$SlozeniJidlaFromJson(Map<String, dynamic> json) =>
    _SlozeniJidla(
      polevka: json['polevka'] as String?,
      hlavniChod: json['hlavni_chod'] as String?,
      salatovyBar: json['salatovy_bar'] as String?,
      piti: json['piti'] as String?,
      ostatni: json['ostatni'] as String?,
    );

Map<String, dynamic> _$SlozeniJidlaToJson(_SlozeniJidla instance) =>
    <String, dynamic>{
      'polevka': instance.polevka,
      'hlavni_chod': instance.hlavniChod,
      'salatovy_bar': instance.salatovyBar,
      'piti': instance.piti,
      'ostatni': instance.ostatni,
    };
