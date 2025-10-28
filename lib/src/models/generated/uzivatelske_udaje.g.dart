// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../uzivatelske_udaje.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UzivatelskeUdaje _$UzivatelskeUdajeFromJson(Map<String, dynamic> json) =>
    _UzivatelskeUdaje(
      jmeno: json['jmeno'] as String?,
      prijmeni: json['prijmeni'] as String?,
      datumNarozeni: json['datum_narozeni'] as String?,
      kategorie: json['kategorie'] as String?,
      skupina: json['skupina'] as String?,
      trida: json['trida'] as String?,
      osobniCislo: json['osobni_cislo'] as String?,
      evidencniCislo: json['evidencni_cislo'] as String?,
      adresa: json['adresa'] as String?,
      mesto: json['mesto'] as String?,
      psc: json['psc'] as String?,
      telefon: json['telefon'] as String?,
      email: json['email'] as String?,
      variabilniSymbol: json['variabilni_symbol'] as String?,
      specifickySymbol: json['specificky_symbol'] as String?,
      ucetProPlatbyDoJidelny: json['ucet_pro_platby_do_jidelny'] as String?,
      ucetProVraceniPreplatku:
          json['ucet_pro_vraceni_preplatku_jidelnou'] as String?,
    );

Map<String, dynamic> _$UzivatelskeUdajeToJson(_UzivatelskeUdaje instance) =>
    <String, dynamic>{
      'jmeno': instance.jmeno,
      'prijmeni': instance.prijmeni,
      'datum_narozeni': instance.datumNarozeni,
      'kategorie': instance.kategorie,
      'skupina': instance.skupina,
      'trida': instance.trida,
      'osobni_cislo': instance.osobniCislo,
      'evidencni_cislo': instance.evidencniCislo,
      'adresa': instance.adresa,
      'mesto': instance.mesto,
      'psc': instance.psc,
      'telefon': instance.telefon,
      'email': instance.email,
      'variabilni_symbol': instance.variabilniSymbol,
      'specificky_symbol': instance.specifickySymbol,
      'ucet_pro_platby_do_jidelny': instance.ucetProPlatbyDoJidelny,
      'ucet_pro_vraceni_preplatku_jidelnou': instance.ucetProVraceniPreplatku,
    };
