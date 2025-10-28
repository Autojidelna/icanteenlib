// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../slozeni_jidla.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SlozeniJidla {

@JsonKey(name: 'polevka') String? get polevka;@JsonKey(name: 'hlavni_chod') String? get hlavniChod;@JsonKey(name: 'salatovy_bar') String? get salatovyBar;@JsonKey(name: 'piti') String? get piti;@JsonKey(name: 'ostatni') String? get ostatni;
/// Create a copy of SlozeniJidla
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SlozeniJidlaCopyWith<SlozeniJidla> get copyWith => _$SlozeniJidlaCopyWithImpl<SlozeniJidla>(this as SlozeniJidla, _$identity);

  /// Serializes this SlozeniJidla to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SlozeniJidla&&(identical(other.polevka, polevka) || other.polevka == polevka)&&(identical(other.hlavniChod, hlavniChod) || other.hlavniChod == hlavniChod)&&(identical(other.salatovyBar, salatovyBar) || other.salatovyBar == salatovyBar)&&(identical(other.piti, piti) || other.piti == piti)&&(identical(other.ostatni, ostatni) || other.ostatni == ostatni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,polevka,hlavniChod,salatovyBar,piti,ostatni);

@override
String toString() {
  return 'SlozeniJidla(polevka: $polevka, hlavniChod: $hlavniChod, salatovyBar: $salatovyBar, piti: $piti, ostatni: $ostatni)';
}


}

/// @nodoc
abstract mixin class $SlozeniJidlaCopyWith<$Res>  {
  factory $SlozeniJidlaCopyWith(SlozeniJidla value, $Res Function(SlozeniJidla) _then) = _$SlozeniJidlaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'polevka') String? polevka,@JsonKey(name: 'hlavni_chod') String? hlavniChod,@JsonKey(name: 'salatovy_bar') String? salatovyBar,@JsonKey(name: 'piti') String? piti,@JsonKey(name: 'ostatni') String? ostatni
});




}
/// @nodoc
class _$SlozeniJidlaCopyWithImpl<$Res>
    implements $SlozeniJidlaCopyWith<$Res> {
  _$SlozeniJidlaCopyWithImpl(this._self, this._then);

  final SlozeniJidla _self;
  final $Res Function(SlozeniJidla) _then;

/// Create a copy of SlozeniJidla
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? polevka = freezed,Object? hlavniChod = freezed,Object? salatovyBar = freezed,Object? piti = freezed,Object? ostatni = freezed,}) {
  return _then(_self.copyWith(
polevka: freezed == polevka ? _self.polevka : polevka // ignore: cast_nullable_to_non_nullable
as String?,hlavniChod: freezed == hlavniChod ? _self.hlavniChod : hlavniChod // ignore: cast_nullable_to_non_nullable
as String?,salatovyBar: freezed == salatovyBar ? _self.salatovyBar : salatovyBar // ignore: cast_nullable_to_non_nullable
as String?,piti: freezed == piti ? _self.piti : piti // ignore: cast_nullable_to_non_nullable
as String?,ostatni: freezed == ostatni ? _self.ostatni : ostatni // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SlozeniJidla].
extension SlozeniJidlaPatterns on SlozeniJidla {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SlozeniJidla value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SlozeniJidla() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SlozeniJidla value)  $default,){
final _that = this;
switch (_that) {
case _SlozeniJidla():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SlozeniJidla value)?  $default,){
final _that = this;
switch (_that) {
case _SlozeniJidla() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavni_chod')  String? hlavniChod, @JsonKey(name: 'salatovy_bar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SlozeniJidla() when $default != null:
return $default(_that.polevka,_that.hlavniChod,_that.salatovyBar,_that.piti,_that.ostatni);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavni_chod')  String? hlavniChod, @JsonKey(name: 'salatovy_bar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)  $default,) {final _that = this;
switch (_that) {
case _SlozeniJidla():
return $default(_that.polevka,_that.hlavniChod,_that.salatovyBar,_that.piti,_that.ostatni);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavni_chod')  String? hlavniChod, @JsonKey(name: 'salatovy_bar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)?  $default,) {final _that = this;
switch (_that) {
case _SlozeniJidla() when $default != null:
return $default(_that.polevka,_that.hlavniChod,_that.salatovyBar,_that.piti,_that.ostatni);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SlozeniJidla implements SlozeniJidla {
  const _SlozeniJidla({@JsonKey(name: 'polevka') this.polevka, @JsonKey(name: 'hlavni_chod') this.hlavniChod, @JsonKey(name: 'salatovy_bar') this.salatovyBar, @JsonKey(name: 'piti') this.piti, @JsonKey(name: 'ostatni') this.ostatni});
  factory _SlozeniJidla.fromJson(Map<String, dynamic> json) => _$SlozeniJidlaFromJson(json);

@override@JsonKey(name: 'polevka') final  String? polevka;
@override@JsonKey(name: 'hlavni_chod') final  String? hlavniChod;
@override@JsonKey(name: 'salatovy_bar') final  String? salatovyBar;
@override@JsonKey(name: 'piti') final  String? piti;
@override@JsonKey(name: 'ostatni') final  String? ostatni;

/// Create a copy of SlozeniJidla
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SlozeniJidlaCopyWith<_SlozeniJidla> get copyWith => __$SlozeniJidlaCopyWithImpl<_SlozeniJidla>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SlozeniJidlaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SlozeniJidla&&(identical(other.polevka, polevka) || other.polevka == polevka)&&(identical(other.hlavniChod, hlavniChod) || other.hlavniChod == hlavniChod)&&(identical(other.salatovyBar, salatovyBar) || other.salatovyBar == salatovyBar)&&(identical(other.piti, piti) || other.piti == piti)&&(identical(other.ostatni, ostatni) || other.ostatni == ostatni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,polevka,hlavniChod,salatovyBar,piti,ostatni);

@override
String toString() {
  return 'SlozeniJidla(polevka: $polevka, hlavniChod: $hlavniChod, salatovyBar: $salatovyBar, piti: $piti, ostatni: $ostatni)';
}


}

/// @nodoc
abstract mixin class _$SlozeniJidlaCopyWith<$Res> implements $SlozeniJidlaCopyWith<$Res> {
  factory _$SlozeniJidlaCopyWith(_SlozeniJidla value, $Res Function(_SlozeniJidla) _then) = __$SlozeniJidlaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'polevka') String? polevka,@JsonKey(name: 'hlavni_chod') String? hlavniChod,@JsonKey(name: 'salatovy_bar') String? salatovyBar,@JsonKey(name: 'piti') String? piti,@JsonKey(name: 'ostatni') String? ostatni
});




}
/// @nodoc
class __$SlozeniJidlaCopyWithImpl<$Res>
    implements _$SlozeniJidlaCopyWith<$Res> {
  __$SlozeniJidlaCopyWithImpl(this._self, this._then);

  final _SlozeniJidla _self;
  final $Res Function(_SlozeniJidla) _then;

/// Create a copy of SlozeniJidla
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? polevka = freezed,Object? hlavniChod = freezed,Object? salatovyBar = freezed,Object? piti = freezed,Object? ostatni = freezed,}) {
  return _then(_SlozeniJidla(
polevka: freezed == polevka ? _self.polevka : polevka // ignore: cast_nullable_to_non_nullable
as String?,hlavniChod: freezed == hlavniChod ? _self.hlavniChod : hlavniChod // ignore: cast_nullable_to_non_nullable
as String?,salatovyBar: freezed == salatovyBar ? _self.salatovyBar : salatovyBar // ignore: cast_nullable_to_non_nullable
as String?,piti: freezed == piti ? _self.piti : piti // ignore: cast_nullable_to_non_nullable
as String?,ostatni: freezed == ostatni ? _self.ostatni : ostatni // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
