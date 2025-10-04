// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'burza.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Burza {

/// Den, který je jídlo vydáváno
@JsonKey(name: 'den') DateTime get den;/// URL pro objednání
@JsonKey(name: 'url') String? get url;/// Název jídla
@JsonKey(name: 'nazev') String get nazev;/// Počet kusů tohoto jídla dostupného na burze
@JsonKey(name: 'pocet') int get pocet;/// Varianta
@JsonKey(name: 'varianta') String? get varianta;
/// Create a copy of Burza
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BurzaCopyWith<Burza> get copyWith => _$BurzaCopyWithImpl<Burza>(this as Burza, _$identity);

  /// Serializes this Burza to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Burza&&(identical(other.den, den) || other.den == den)&&(identical(other.url, url) || other.url == url)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.pocet, pocet) || other.pocet == pocet)&&(identical(other.varianta, varianta) || other.varianta == varianta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,den,url,nazev,pocet,varianta);

@override
String toString() {
  return 'Burza(den: $den, url: $url, nazev: $nazev, pocet: $pocet, varianta: $varianta)';
}


}

/// @nodoc
abstract mixin class $BurzaCopyWith<$Res>  {
  factory $BurzaCopyWith(Burza value, $Res Function(Burza) _then) = _$BurzaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'url') String? url,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'pocet') int pocet,@JsonKey(name: 'varianta') String? varianta
});




}
/// @nodoc
class _$BurzaCopyWithImpl<$Res>
    implements $BurzaCopyWith<$Res> {
  _$BurzaCopyWithImpl(this._self, this._then);

  final Burza _self;
  final $Res Function(Burza) _then;

/// Create a copy of Burza
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? den = null,Object? url = freezed,Object? nazev = null,Object? pocet = null,Object? varianta = freezed,}) {
  return _then(_self.copyWith(
den: null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,pocet: null == pocet ? _self.pocet : pocet // ignore: cast_nullable_to_non_nullable
as int,varianta: freezed == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Burza].
extension BurzaPatterns on Burza {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Burza value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Burza() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Burza value)  $default,){
final _that = this;
switch (_that) {
case _Burza():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Burza value)?  $default,){
final _that = this;
switch (_that) {
case _Burza() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'pocet')  int pocet, @JsonKey(name: 'varianta')  String? varianta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Burza() when $default != null:
return $default(_that.den,_that.url,_that.nazev,_that.pocet,_that.varianta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'pocet')  int pocet, @JsonKey(name: 'varianta')  String? varianta)  $default,) {final _that = this;
switch (_that) {
case _Burza():
return $default(_that.den,_that.url,_that.nazev,_that.pocet,_that.varianta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'pocet')  int pocet, @JsonKey(name: 'varianta')  String? varianta)?  $default,) {final _that = this;
switch (_that) {
case _Burza() when $default != null:
return $default(_that.den,_that.url,_that.nazev,_that.pocet,_that.varianta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Burza implements Burza {
  const _Burza({@JsonKey(name: 'den') required this.den, @JsonKey(name: 'url') required this.url, @JsonKey(name: 'nazev') required this.nazev, @JsonKey(name: 'pocet') required this.pocet, @JsonKey(name: 'varianta') this.varianta});
  factory _Burza.fromJson(Map<String, dynamic> json) => _$BurzaFromJson(json);

/// Den, který je jídlo vydáváno
@override@JsonKey(name: 'den') final  DateTime den;
/// URL pro objednání
@override@JsonKey(name: 'url') final  String? url;
/// Název jídla
@override@JsonKey(name: 'nazev') final  String nazev;
/// Počet kusů tohoto jídla dostupného na burze
@override@JsonKey(name: 'pocet') final  int pocet;
/// Varianta
@override@JsonKey(name: 'varianta') final  String? varianta;

/// Create a copy of Burza
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BurzaCopyWith<_Burza> get copyWith => __$BurzaCopyWithImpl<_Burza>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BurzaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Burza&&(identical(other.den, den) || other.den == den)&&(identical(other.url, url) || other.url == url)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.pocet, pocet) || other.pocet == pocet)&&(identical(other.varianta, varianta) || other.varianta == varianta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,den,url,nazev,pocet,varianta);

@override
String toString() {
  return 'Burza(den: $den, url: $url, nazev: $nazev, pocet: $pocet, varianta: $varianta)';
}


}

/// @nodoc
abstract mixin class _$BurzaCopyWith<$Res> implements $BurzaCopyWith<$Res> {
  factory _$BurzaCopyWith(_Burza value, $Res Function(_Burza) _then) = __$BurzaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'url') String? url,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'pocet') int pocet,@JsonKey(name: 'varianta') String? varianta
});




}
/// @nodoc
class __$BurzaCopyWithImpl<$Res>
    implements _$BurzaCopyWith<$Res> {
  __$BurzaCopyWithImpl(this._self, this._then);

  final _Burza _self;
  final $Res Function(_Burza) _then;

/// Create a copy of Burza
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? den = null,Object? url = freezed,Object? nazev = null,Object? pocet = null,Object? varianta = freezed,}) {
  return _then(_Burza(
den: null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,pocet: null == pocet ? _self.pocet : pocet // ignore: cast_nullable_to_non_nullable
as int,varianta: freezed == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
