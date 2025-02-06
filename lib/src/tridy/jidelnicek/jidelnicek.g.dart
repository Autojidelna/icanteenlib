// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jidelnicek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JidelnicekImpl _$$JidelnicekImplFromJson(Map<String, dynamic> json) =>
    _$JidelnicekImpl(
      DateTime.parse(json['den'] as String),
      (json['jidla'] as List<dynamic>)
          .map((e) => Jidlo.fromJson(e as Map<String, dynamic>))
          .toList(),
      vydejny: (json['vydejny'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(int.parse(k), e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$$JidelnicekImplToJson(_$JidelnicekImpl instance) =>
    <String, dynamic>{
      'den': instance.den.toIso8601String(),
      'jidla': instance.jidla,
      'vydejny': instance.vydejny.map((k, e) => MapEntry(k.toString(), e)),
    };
