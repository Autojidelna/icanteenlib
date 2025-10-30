// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../jidelnicek.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Jidelnicek _$JidelnicekFromJson(Map<String, dynamic> json) => _Jidelnicek(
  datum: DateTime.parse(json['datum'] as String),
  vydejna: json['vydejna'] as String?,
  nabidka:
      (json['nabidka'] as List<dynamic>?)
          ?.map((e) => Jidlo.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Jidlo>[],
);

Map<String, dynamic> _$JidelnicekToJson(_Jidelnicek instance) =>
    <String, dynamic>{
      'datum': instance.datum.toIso8601String(),
      'vydejna': instance.vydejna,
      'nabidka': instance.nabidka.map((e) => e.toJson()).toList(),
    };
