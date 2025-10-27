import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/food_categories.freezed.dart';
part 'generated/food_categories.g.dart';

@freezed
sealed class FoodCategories with _$FoodCategories {
  const factory FoodCategories({
    @JsonKey(name: 'soup') String? soup,
    @JsonKey(name: 'main_course') String? mainCourse,
    @JsonKey(name: 'salate_bar') String? salateBar,
    @JsonKey(name: 'drinks') String? drinks,
    @JsonKey(name: 'other') String? other,
  }) = _FoodCategories;

  factory FoodCategories.fromJson(Map<String, Object?> json) => _$FoodCategoriesFromJson(json);
}
