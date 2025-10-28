// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../feature_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeatureSupport _$FeatureSupportFromJson(Map<String, dynamic> json) =>
    _FeatureSupport(
      missingInCode:
          (json['missingInCode'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeaturesEnumMap, e))
              .toList() ??
          const [],
      unsupportedByCanteen:
          (json['unsupportedByCanteen'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeaturesEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$FeatureSupportToJson(_FeatureSupport instance) =>
    <String, dynamic>{
      'missingInCode': instance.missingInCode
          .map((e) => _$FeaturesEnumMap[e]!)
          .toList(),
      'unsupportedByCanteen': instance.unsupportedByCanteen
          .map((e) => _$FeaturesEnumMap[e]!)
          .toList(),
    };

const _$FeaturesEnumMap = {
  Features.vydejny: 'vydejny',
  Features.uzivatelskeUdaje: 'uzivatelskeUdaje',
  Features.verejnyJidelnicek: 'verejnyJidelnicek',
  Features.jidelnicekDen: 'jidelnicekDen',
  Features.vsechnyJidelnicky: 'vsechnyJidelnicky',
  Features.burza: 'burza',
  Features.burzaAmount: 'burzaAmount',
  Features.alergeny: 'alergeny',
};
