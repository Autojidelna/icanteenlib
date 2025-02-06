// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jidlo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JidloImpl _$$JidloImplFromJson(Map<String, dynamic> json) => _$JidloImpl(
      nazev: json['nazev'] as String,
      kategorizovano: json['kategorizovano'] == null
          ? null
          : JidloKategorizovano.fromJson(
              json['kategorizovano'] as Map<String, dynamic>),
      objednano: json['objednano'] as bool,
      varianta: json['varianta'] as String,
      cena: (json['cena'] as num?)?.toDouble(),
      lzeObjednat: json['lzeObjednat'] as bool,
      naBurze: json['naBurze'] as bool,
      den: DateTime.parse(json['den'] as String),
      alergeny: (json['alergeny'] as List<dynamic>?)
              ?.map((e) => Alergen.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      orderUrl: json['orderUrl'] as String?,
      burzaUrl: json['burzaUrl'] as String?,
    );

Map<String, dynamic> _$$JidloImplToJson(_$JidloImpl instance) =>
    <String, dynamic>{
      'nazev': instance.nazev,
      'kategorizovano': instance.kategorizovano,
      'objednano': instance.objednano,
      'varianta': instance.varianta,
      'cena': instance.cena,
      'lzeObjednat': instance.lzeObjednat,
      'naBurze': instance.naBurze,
      'den': instance.den.toIso8601String(),
      'alergeny': instance.alergeny,
      'orderUrl': instance.orderUrl,
      'burzaUrl': instance.burzaUrl,
    };
