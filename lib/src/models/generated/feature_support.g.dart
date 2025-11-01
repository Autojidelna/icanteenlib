// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../feature_support.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeatureSupport _$FeatureSupportFromJson(Map<String, dynamic> json) =>
    _FeatureSupport(
      missingInCode:
          (json['missing_in_code'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeaturesEnumMap, e))
              .toSet() ??
          const {},
      unsupportedByCanteen:
          (json['unsupported_by_canteen'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FeaturesEnumMap, e))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$FeatureSupportToJson(_FeatureSupport instance) =>
    <String, dynamic>{
      'missing_in_code': instance.missingInCode
          .map((e) => _$FeaturesEnumMap[e]!)
          .toList(),
      'unsupported_by_canteen': instance.unsupportedByCanteen
          .map((e) => _$FeaturesEnumMap[e]!)
          .toList(),
    };

const _$FeaturesEnumMap = {
  Features.help: 'help',
  Features.burza: 'burza',
  Features.hodnoceni: 'hodnoceni',
  Features.verejnyJidelnicek: 'verejnyJidelnicek',
  Features.specifickyJidelnicek: 'specifickyJidelnicek',
  Features.vsechnyJidelnicky: 'vsechnyJidelnicky',
  Features.alergeny: 'alergeny',
  Features.uzivatelskeUdaje: 'uzivatelskeUdaje',
  Features.objednavatViceJidel: 'objednavatViceJidel',
  Features.viceJazycnost: 'viceJazycnost',
  Features.viceVydejen: 'viceVydejen',
};
