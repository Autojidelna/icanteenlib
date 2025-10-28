// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../jidlo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jidlo _$JidloFromJson(Map<String, dynamic> json) => _Jidlo(
  datum: DateTime.parse(json['datum'] as String),
  stav: $enumDecode(_$StavJidlaEnumMap, json['stav']),
  varianta: json['varianta'] as String,
  nazev: json['nazev'] as String,
  slozeniJidla: json['slozeni_jidla'] == null
      ? null
      : SlozeniJidla.fromJson(json['slozeni_jidla'] as Map<String, dynamic>),
  alergeny:
      (json['alergeny'] as List<dynamic>?)
          ?.map((e) => Alergen.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Alergen>[],
  cena: (json['cena'] as num?)?.toDouble(),
  url: json['url'] as String?,
);

Map<String, dynamic> _$JidloToJson(_Jidlo instance) => <String, dynamic>{
  'datum': instance.datum.toIso8601String(),
  'stav': _$StavJidlaEnumMap[instance.stav]!,
  'varianta': instance.varianta,
  'nazev': instance.nazev,
  'slozeni_jidla': instance.slozeniJidla?.toJson(),
  'alergeny': instance.alergeny.map((e) => e.toJson()).toList(),
  'cena': instance.cena,
  'url': instance.url,
};

const _$StavJidlaEnumMap = {
  StavJidla.objednano: 'objednano',
  StavJidla.objednanoPouzeNaBurzu: 'objednanoPouzeNaBurzu',
  StavJidla.objednanoVyprsenaPlatnost: 'objednanoVyprsenaPlatnost',
  StavJidla.vlozenoNaBurze: 'vlozenoNaBurze',
  StavJidla.dostupneNaBurze: 'dostupneNaBurze',
  StavJidla.neobjednano: 'neobjednano',
  StavJidla.nedostupne: 'nedostupne',
};
