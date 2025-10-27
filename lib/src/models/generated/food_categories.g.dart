// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../food_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FoodCategories _$FoodCategoriesFromJson(Map<String, dynamic> json) =>
    _FoodCategories(
      soup: json['soup'] as String?,
      mainCourse: json['main_course'] as String?,
      salateBar: json['salate_bar'] as String?,
      drinks: json['drinks'] as String?,
      other: json['other'] as String?,
    );

Map<String, dynamic> _$FoodCategoriesToJson(_FoodCategories instance) =>
    <String, dynamic>{
      'soup': instance.soup,
      'main_course': instance.mainCourse,
      'salate_bar': instance.salateBar,
      'drinks': instance.drinks,
      'other': instance.other,
    };
