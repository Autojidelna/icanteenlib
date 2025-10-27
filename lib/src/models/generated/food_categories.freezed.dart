// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../food_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodCategories {

@JsonKey(name: 'soup') String? get soup;@JsonKey(name: 'main_course') String? get mainCourse;@JsonKey(name: 'salate_bar') String? get salateBar;@JsonKey(name: 'drinks') String? get drinks;@JsonKey(name: 'other') String? get other;
/// Create a copy of FoodCategories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodCategoriesCopyWith<FoodCategories> get copyWith => _$FoodCategoriesCopyWithImpl<FoodCategories>(this as FoodCategories, _$identity);

  /// Serializes this FoodCategories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodCategories&&(identical(other.soup, soup) || other.soup == soup)&&(identical(other.mainCourse, mainCourse) || other.mainCourse == mainCourse)&&(identical(other.salateBar, salateBar) || other.salateBar == salateBar)&&(identical(other.drinks, drinks) || other.drinks == drinks)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soup,mainCourse,salateBar,drinks,other);

@override
String toString() {
  return 'FoodCategories(soup: $soup, mainCourse: $mainCourse, salateBar: $salateBar, drinks: $drinks, other: $other)';
}


}

/// @nodoc
abstract mixin class $FoodCategoriesCopyWith<$Res>  {
  factory $FoodCategoriesCopyWith(FoodCategories value, $Res Function(FoodCategories) _then) = _$FoodCategoriesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'soup') String? soup,@JsonKey(name: 'main_course') String? mainCourse,@JsonKey(name: 'salate_bar') String? salateBar,@JsonKey(name: 'drinks') String? drinks,@JsonKey(name: 'other') String? other
});




}
/// @nodoc
class _$FoodCategoriesCopyWithImpl<$Res>
    implements $FoodCategoriesCopyWith<$Res> {
  _$FoodCategoriesCopyWithImpl(this._self, this._then);

  final FoodCategories _self;
  final $Res Function(FoodCategories) _then;

/// Create a copy of FoodCategories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? soup = freezed,Object? mainCourse = freezed,Object? salateBar = freezed,Object? drinks = freezed,Object? other = freezed,}) {
  return _then(_self.copyWith(
soup: freezed == soup ? _self.soup : soup // ignore: cast_nullable_to_non_nullable
as String?,mainCourse: freezed == mainCourse ? _self.mainCourse : mainCourse // ignore: cast_nullable_to_non_nullable
as String?,salateBar: freezed == salateBar ? _self.salateBar : salateBar // ignore: cast_nullable_to_non_nullable
as String?,drinks: freezed == drinks ? _self.drinks : drinks // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodCategories].
extension FoodCategoriesPatterns on FoodCategories {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodCategories value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodCategories() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodCategories value)  $default,){
final _that = this;
switch (_that) {
case _FoodCategories():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodCategories value)?  $default,){
final _that = this;
switch (_that) {
case _FoodCategories() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'soup')  String? soup, @JsonKey(name: 'main_course')  String? mainCourse, @JsonKey(name: 'salate_bar')  String? salateBar, @JsonKey(name: 'drinks')  String? drinks, @JsonKey(name: 'other')  String? other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodCategories() when $default != null:
return $default(_that.soup,_that.mainCourse,_that.salateBar,_that.drinks,_that.other);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'soup')  String? soup, @JsonKey(name: 'main_course')  String? mainCourse, @JsonKey(name: 'salate_bar')  String? salateBar, @JsonKey(name: 'drinks')  String? drinks, @JsonKey(name: 'other')  String? other)  $default,) {final _that = this;
switch (_that) {
case _FoodCategories():
return $default(_that.soup,_that.mainCourse,_that.salateBar,_that.drinks,_that.other);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'soup')  String? soup, @JsonKey(name: 'main_course')  String? mainCourse, @JsonKey(name: 'salate_bar')  String? salateBar, @JsonKey(name: 'drinks')  String? drinks, @JsonKey(name: 'other')  String? other)?  $default,) {final _that = this;
switch (_that) {
case _FoodCategories() when $default != null:
return $default(_that.soup,_that.mainCourse,_that.salateBar,_that.drinks,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodCategories implements FoodCategories {
  const _FoodCategories({@JsonKey(name: 'soup') this.soup, @JsonKey(name: 'main_course') this.mainCourse, @JsonKey(name: 'salate_bar') this.salateBar, @JsonKey(name: 'drinks') this.drinks, @JsonKey(name: 'other') this.other});
  factory _FoodCategories.fromJson(Map<String, dynamic> json) => _$FoodCategoriesFromJson(json);

@override@JsonKey(name: 'soup') final  String? soup;
@override@JsonKey(name: 'main_course') final  String? mainCourse;
@override@JsonKey(name: 'salate_bar') final  String? salateBar;
@override@JsonKey(name: 'drinks') final  String? drinks;
@override@JsonKey(name: 'other') final  String? other;

/// Create a copy of FoodCategories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodCategoriesCopyWith<_FoodCategories> get copyWith => __$FoodCategoriesCopyWithImpl<_FoodCategories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodCategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodCategories&&(identical(other.soup, soup) || other.soup == soup)&&(identical(other.mainCourse, mainCourse) || other.mainCourse == mainCourse)&&(identical(other.salateBar, salateBar) || other.salateBar == salateBar)&&(identical(other.drinks, drinks) || other.drinks == drinks)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,soup,mainCourse,salateBar,drinks,other);

@override
String toString() {
  return 'FoodCategories(soup: $soup, mainCourse: $mainCourse, salateBar: $salateBar, drinks: $drinks, other: $other)';
}


}

/// @nodoc
abstract mixin class _$FoodCategoriesCopyWith<$Res> implements $FoodCategoriesCopyWith<$Res> {
  factory _$FoodCategoriesCopyWith(_FoodCategories value, $Res Function(_FoodCategories) _then) = __$FoodCategoriesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'soup') String? soup,@JsonKey(name: 'main_course') String? mainCourse,@JsonKey(name: 'salate_bar') String? salateBar,@JsonKey(name: 'drinks') String? drinks,@JsonKey(name: 'other') String? other
});




}
/// @nodoc
class __$FoodCategoriesCopyWithImpl<$Res>
    implements _$FoodCategoriesCopyWith<$Res> {
  __$FoodCategoriesCopyWithImpl(this._self, this._then);

  final _FoodCategories _self;
  final $Res Function(_FoodCategories) _then;

/// Create a copy of FoodCategories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? soup = freezed,Object? mainCourse = freezed,Object? salateBar = freezed,Object? drinks = freezed,Object? other = freezed,}) {
  return _then(_FoodCategories(
soup: freezed == soup ? _self.soup : soup // ignore: cast_nullable_to_non_nullable
as String?,mainCourse: freezed == mainCourse ? _self.mainCourse : mainCourse // ignore: cast_nullable_to_non_nullable
as String?,salateBar: freezed == salateBar ? _self.salateBar : salateBar // ignore: cast_nullable_to_non_nullable
as String?,drinks: freezed == drinks ? _self.drinks : drinks // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
