// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../feature_support.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeatureSupport {

/// Funkce nepodporované touto knihovnou
@JsonKey(name: 'missing_in_code') Set<Features> get missingInCode;/// Funkce nepodporované instancí iCanteenu
@JsonKey(name: 'unsupported_by_canteen') Set<Features> get unsupportedByCanteen;
/// Create a copy of FeatureSupport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeatureSupportCopyWith<FeatureSupport> get copyWith => _$FeatureSupportCopyWithImpl<FeatureSupport>(this as FeatureSupport, _$identity);

  /// Serializes this FeatureSupport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeatureSupport&&const DeepCollectionEquality().equals(other.missingInCode, missingInCode)&&const DeepCollectionEquality().equals(other.unsupportedByCanteen, unsupportedByCanteen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(missingInCode),const DeepCollectionEquality().hash(unsupportedByCanteen));

@override
String toString() {
  return 'FeatureSupport(missingInCode: $missingInCode, unsupportedByCanteen: $unsupportedByCanteen)';
}


}

/// @nodoc
abstract mixin class $FeatureSupportCopyWith<$Res>  {
  factory $FeatureSupportCopyWith(FeatureSupport value, $Res Function(FeatureSupport) _then) = _$FeatureSupportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'missing_in_code') Set<Features> missingInCode,@JsonKey(name: 'unsupported_by_canteen') Set<Features> unsupportedByCanteen
});




}
/// @nodoc
class _$FeatureSupportCopyWithImpl<$Res>
    implements $FeatureSupportCopyWith<$Res> {
  _$FeatureSupportCopyWithImpl(this._self, this._then);

  final FeatureSupport _self;
  final $Res Function(FeatureSupport) _then;

/// Create a copy of FeatureSupport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? missingInCode = null,Object? unsupportedByCanteen = null,}) {
  return _then(_self.copyWith(
missingInCode: null == missingInCode ? _self.missingInCode : missingInCode // ignore: cast_nullable_to_non_nullable
as Set<Features>,unsupportedByCanteen: null == unsupportedByCanteen ? _self.unsupportedByCanteen : unsupportedByCanteen // ignore: cast_nullable_to_non_nullable
as Set<Features>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeatureSupport].
extension FeatureSupportPatterns on FeatureSupport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeatureSupport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeatureSupport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeatureSupport value)  $default,){
final _that = this;
switch (_that) {
case _FeatureSupport():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeatureSupport value)?  $default,){
final _that = this;
switch (_that) {
case _FeatureSupport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'missing_in_code')  Set<Features> missingInCode, @JsonKey(name: 'unsupported_by_canteen')  Set<Features> unsupportedByCanteen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeatureSupport() when $default != null:
return $default(_that.missingInCode,_that.unsupportedByCanteen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'missing_in_code')  Set<Features> missingInCode, @JsonKey(name: 'unsupported_by_canteen')  Set<Features> unsupportedByCanteen)  $default,) {final _that = this;
switch (_that) {
case _FeatureSupport():
return $default(_that.missingInCode,_that.unsupportedByCanteen);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'missing_in_code')  Set<Features> missingInCode, @JsonKey(name: 'unsupported_by_canteen')  Set<Features> unsupportedByCanteen)?  $default,) {final _that = this;
switch (_that) {
case _FeatureSupport() when $default != null:
return $default(_that.missingInCode,_that.unsupportedByCanteen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeatureSupport implements FeatureSupport {
   _FeatureSupport({@JsonKey(name: 'missing_in_code') this.missingInCode = const {}, @JsonKey(name: 'unsupported_by_canteen') this.unsupportedByCanteen = const {}});
  factory _FeatureSupport.fromJson(Map<String, dynamic> json) => _$FeatureSupportFromJson(json);

/// Funkce nepodporované touto knihovnou
@override@JsonKey(name: 'missing_in_code') final  Set<Features> missingInCode;
/// Funkce nepodporované instancí iCanteenu
@override@JsonKey(name: 'unsupported_by_canteen') final  Set<Features> unsupportedByCanteen;

/// Create a copy of FeatureSupport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeatureSupportCopyWith<_FeatureSupport> get copyWith => __$FeatureSupportCopyWithImpl<_FeatureSupport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeatureSupportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeatureSupport&&const DeepCollectionEquality().equals(other.missingInCode, missingInCode)&&const DeepCollectionEquality().equals(other.unsupportedByCanteen, unsupportedByCanteen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(missingInCode),const DeepCollectionEquality().hash(unsupportedByCanteen));

@override
String toString() {
  return 'FeatureSupport(missingInCode: $missingInCode, unsupportedByCanteen: $unsupportedByCanteen)';
}


}

/// @nodoc
abstract mixin class _$FeatureSupportCopyWith<$Res> implements $FeatureSupportCopyWith<$Res> {
  factory _$FeatureSupportCopyWith(_FeatureSupport value, $Res Function(_FeatureSupport) _then) = __$FeatureSupportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'missing_in_code') Set<Features> missingInCode,@JsonKey(name: 'unsupported_by_canteen') Set<Features> unsupportedByCanteen
});




}
/// @nodoc
class __$FeatureSupportCopyWithImpl<$Res>
    implements _$FeatureSupportCopyWith<$Res> {
  __$FeatureSupportCopyWithImpl(this._self, this._then);

  final _FeatureSupport _self;
  final $Res Function(_FeatureSupport) _then;

/// Create a copy of FeatureSupport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? missingInCode = null,Object? unsupportedByCanteen = null,}) {
  return _then(_FeatureSupport(
missingInCode: null == missingInCode ? _self.missingInCode : missingInCode // ignore: cast_nullable_to_non_nullable
as Set<Features>,unsupportedByCanteen: null == unsupportedByCanteen ? _self.unsupportedByCanteen : unsupportedByCanteen // ignore: cast_nullable_to_non_nullable
as Set<Features>,
  ));
}


}

// dart format on
