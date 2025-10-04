// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jidlo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jidlo _$JidloFromJson(Map<String, dynamic> json) => _Jidlo(
  nazev: json['nazev'] as String,
  kategorizovano: json['kategorizovano'] == null
      ? null
      : JidloKategorizovano.fromJson(
          json['kategorizovano'] as Map<String, dynamic>,
        ),
  objednano: json['objednano'] as bool,
  varianta: json['varianta'] as String,
  cena: (json['cena'] as num?)?.toDouble(),
  lzeObjednat: json['lzeObjednat'] as bool,
  naBurze: json['naBurze'] as bool,
  den: DateTime.parse(json['den'] as String),
  alergeny:
      (json['alergeny'] as List<dynamic>?)
          ?.map((e) => Alergen.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  orderUrl: json['orderUrl'] as String?,
  burzaUrl: json['burzaUrl'] as String?,
);

Map<String, dynamic> _$JidloToJson(_Jidlo instance) => <String, dynamic>{
  'nazev': instance.nazev,
  'kategorizovano': instance.kategorizovano?.toJson(),
  'objednano': instance.objednano,
  'varianta': instance.varianta,
  'cena': instance.cena,
  'lzeObjednat': instance.lzeObjednat,
  'naBurze': instance.naBurze,
  'den': instance.den.toIso8601String(),
  'alergeny': instance.alergeny.map((e) => e.toJson()).toList(),
  'orderUrl': instance.orderUrl,
  'burzaUrl': instance.burzaUrl,
};
