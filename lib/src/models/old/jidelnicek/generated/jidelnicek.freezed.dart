// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../jidelnicek.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Jidelnicek {

/// Den, pro který je jídelníček zveřejněn
@JsonKey(name: 'den') DateTime get den;/// Seznam jídel
@JsonKey(name: 'jidla') List<Jidlo> get jidla;// Seznam výdejen (je prázdný, pokud je pouze jedna)
@JsonKey(name: 'vydejny') Map<int, String> get vydejny;
/// Create a copy of Jidelnicek
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JidelnicekCopyWith<Jidelnicek> get copyWith => _$JidelnicekCopyWithImpl<Jidelnicek>(this as Jidelnicek, _$identity);

  /// Serializes this Jidelnicek to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Jidelnicek&&(identical(other.den, den) || other.den == den)&&const DeepCollectionEquality().equals(other.jidla, jidla)&&const DeepCollectionEquality().equals(other.vydejny, vydejny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,den,const DeepCollectionEquality().hash(jidla),const DeepCollectionEquality().hash(vydejny));

@override
String toString() {
  return 'Jidelnicek(den: $den, jidla: $jidla, vydejny: $vydejny)';
}


}

/// @nodoc
abstract mixin class $JidelnicekCopyWith<$Res>  {
  factory $JidelnicekCopyWith(Jidelnicek value, $Res Function(Jidelnicek) _then) = _$JidelnicekCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'jidla') List<Jidlo> jidla,@JsonKey(name: 'vydejny') Map<int, String> vydejny
});




}
/// @nodoc
class _$JidelnicekCopyWithImpl<$Res>
    implements $JidelnicekCopyWith<$Res> {
  _$JidelnicekCopyWithImpl(this._self, this._then);

  final Jidelnicek _self;
  final $Res Function(Jidelnicek) _then;

/// Create a copy of Jidelnicek
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? den = null,Object? jidla = null,Object? vydejny = null,}) {
  return _then(_self.copyWith(
den: null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,jidla: null == jidla ? _self.jidla : jidla // ignore: cast_nullable_to_non_nullable
as List<Jidlo>,vydejny: null == vydejny ? _self.vydejny : vydejny // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Jidelnicek].
extension JidelnicekPatterns on Jidelnicek {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Jidelnicek value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Jidelnicek() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Jidelnicek value)  $default,){
final _that = this;
switch (_that) {
case _Jidelnicek():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Jidelnicek value)?  $default,){
final _that = this;
switch (_that) {
case _Jidelnicek() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'jidla')  List<Jidlo> jidla, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Jidelnicek() when $default != null:
return $default(_that.den,_that.jidla,_that.vydejny);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'jidla')  List<Jidlo> jidla, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)  $default,) {final _that = this;
switch (_that) {
case _Jidelnicek():
return $default(_that.den,_that.jidla,_that.vydejny);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'jidla')  List<Jidlo> jidla, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)?  $default,) {final _that = this;
switch (_that) {
case _Jidelnicek() when $default != null:
return $default(_that.den,_that.jidla,_that.vydejny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Jidelnicek implements Jidelnicek {
  const _Jidelnicek(@JsonKey(name: 'den') this.den, @JsonKey(name: 'jidla') final  List<Jidlo> jidla, {@JsonKey(name: 'vydejny') final  Map<int, String> vydejny = const {}}): _jidla = jidla,_vydejny = vydejny;
  factory _Jidelnicek.fromJson(Map<String, dynamic> json) => _$JidelnicekFromJson(json);

/// Den, pro který je jídelníček zveřejněn
@override@JsonKey(name: 'den') final  DateTime den;
/// Seznam jídel
 final  List<Jidlo> _jidla;
/// Seznam jídel
@override@JsonKey(name: 'jidla') List<Jidlo> get jidla {
  if (_jidla is EqualUnmodifiableListView) return _jidla;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jidla);
}

// Seznam výdejen (je prázdný, pokud je pouze jedna)
 final  Map<int, String> _vydejny;
// Seznam výdejen (je prázdný, pokud je pouze jedna)
@override@JsonKey(name: 'vydejny') Map<int, String> get vydejny {
  if (_vydejny is EqualUnmodifiableMapView) return _vydejny;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vydejny);
}


/// Create a copy of Jidelnicek
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JidelnicekCopyWith<_Jidelnicek> get copyWith => __$JidelnicekCopyWithImpl<_Jidelnicek>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JidelnicekToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Jidelnicek&&(identical(other.den, den) || other.den == den)&&const DeepCollectionEquality().equals(other._jidla, _jidla)&&const DeepCollectionEquality().equals(other._vydejny, _vydejny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,den,const DeepCollectionEquality().hash(_jidla),const DeepCollectionEquality().hash(_vydejny));

@override
String toString() {
  return 'Jidelnicek(den: $den, jidla: $jidla, vydejny: $vydejny)';
}


}

/// @nodoc
abstract mixin class _$JidelnicekCopyWith<$Res> implements $JidelnicekCopyWith<$Res> {
  factory _$JidelnicekCopyWith(_Jidelnicek value, $Res Function(_Jidelnicek) _then) = __$JidelnicekCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'jidla') List<Jidlo> jidla,@JsonKey(name: 'vydejny') Map<int, String> vydejny
});




}
/// @nodoc
class __$JidelnicekCopyWithImpl<$Res>
    implements _$JidelnicekCopyWith<$Res> {
  __$JidelnicekCopyWithImpl(this._self, this._then);

  final _Jidelnicek _self;
  final $Res Function(_Jidelnicek) _then;

/// Create a copy of Jidelnicek
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? den = null,Object? jidla = null,Object? vydejny = null,}) {
  return _then(_Jidelnicek(
null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,null == jidla ? _self._jidla : jidla // ignore: cast_nullable_to_non_nullable
as List<Jidlo>,vydejny: null == vydejny ? _self._vydejny : vydejny // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}


}

// dart format on
