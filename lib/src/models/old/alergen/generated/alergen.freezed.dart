// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../alergen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Alergen {

@JsonKey(name: 'kod') int? get kod;@JsonKey(name: 'nazev') String get nazev;@JsonKey(name: 'popis') String? get popis;
/// Create a copy of Alergen
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AlergenCopyWith<Alergen> get copyWith => _$AlergenCopyWithImpl<Alergen>(this as Alergen, _$identity);

  /// Serializes this Alergen to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Alergen&&(identical(other.kod, kod) || other.kod == kod)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.popis, popis) || other.popis == popis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kod,nazev,popis);

@override
String toString() {
  return 'Alergen(kod: $kod, nazev: $nazev, popis: $popis)';
}


}

/// @nodoc
abstract mixin class $AlergenCopyWith<$Res>  {
  factory $AlergenCopyWith(Alergen value, $Res Function(Alergen) _then) = _$AlergenCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kod') int? kod,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'popis') String? popis
});




}
/// @nodoc
class _$AlergenCopyWithImpl<$Res>
    implements $AlergenCopyWith<$Res> {
  _$AlergenCopyWithImpl(this._self, this._then);

  final Alergen _self;
  final $Res Function(Alergen) _then;

/// Create a copy of Alergen
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kod = freezed,Object? nazev = null,Object? popis = freezed,}) {
  return _then(_self.copyWith(
kod: freezed == kod ? _self.kod : kod // ignore: cast_nullable_to_non_nullable
as int?,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,popis: freezed == popis ? _self.popis : popis // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Alergen].
extension AlergenPatterns on Alergen {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Alergen value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Alergen() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Alergen value)  $default,){
final _that = this;
switch (_that) {
case _Alergen():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Alergen value)?  $default,){
final _that = this;
switch (_that) {
case _Alergen() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kod')  int? kod, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'popis')  String? popis)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Alergen() when $default != null:
return $default(_that.kod,_that.nazev,_that.popis);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kod')  int? kod, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'popis')  String? popis)  $default,) {final _that = this;
switch (_that) {
case _Alergen():
return $default(_that.kod,_that.nazev,_that.popis);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kod')  int? kod, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'popis')  String? popis)?  $default,) {final _that = this;
switch (_that) {
case _Alergen() when $default != null:
return $default(_that.kod,_that.nazev,_that.popis);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Alergen implements Alergen {
  const _Alergen({@JsonKey(name: 'kod') this.kod, @JsonKey(name: 'nazev') required this.nazev, @JsonKey(name: 'popis') this.popis});
  factory _Alergen.fromJson(Map<String, dynamic> json) => _$AlergenFromJson(json);

@override@JsonKey(name: 'kod') final  int? kod;
@override@JsonKey(name: 'nazev') final  String nazev;
@override@JsonKey(name: 'popis') final  String? popis;

/// Create a copy of Alergen
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AlergenCopyWith<_Alergen> get copyWith => __$AlergenCopyWithImpl<_Alergen>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AlergenToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Alergen&&(identical(other.kod, kod) || other.kod == kod)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.popis, popis) || other.popis == popis));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kod,nazev,popis);

@override
String toString() {
  return 'Alergen(kod: $kod, nazev: $nazev, popis: $popis)';
}


}

/// @nodoc
abstract mixin class _$AlergenCopyWith<$Res> implements $AlergenCopyWith<$Res> {
  factory _$AlergenCopyWith(_Alergen value, $Res Function(_Alergen) _then) = __$AlergenCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kod') int? kod,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'popis') String? popis
});




}
/// @nodoc
class __$AlergenCopyWithImpl<$Res>
    implements _$AlergenCopyWith<$Res> {
  __$AlergenCopyWithImpl(this._self, this._then);

  final _Alergen _self;
  final $Res Function(_Alergen) _then;

/// Create a copy of Alergen
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kod = freezed,Object? nazev = null,Object? popis = freezed,}) {
  return _then(_Alergen(
kod: freezed == kod ? _self.kod : kod // ignore: cast_nullable_to_non_nullable
as int?,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,popis: freezed == popis ? _self.popis : popis // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
