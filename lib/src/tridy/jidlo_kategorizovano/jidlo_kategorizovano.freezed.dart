// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jidlo_kategorizovano.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JidloKategorizovano {

@JsonKey(name: 'polevka') String? get polevka;@JsonKey(name: 'hlavniJidlo') String? get hlavniJidlo;@JsonKey(name: 'salatovyBar') String? get salatovyBar;@JsonKey(name: 'piti') String? get piti;@JsonKey(name: 'ostatni') String? get ostatni;
/// Create a copy of JidloKategorizovano
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JidloKategorizovanoCopyWith<JidloKategorizovano> get copyWith => _$JidloKategorizovanoCopyWithImpl<JidloKategorizovano>(this as JidloKategorizovano, _$identity);

  /// Serializes this JidloKategorizovano to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JidloKategorizovano&&(identical(other.polevka, polevka) || other.polevka == polevka)&&(identical(other.hlavniJidlo, hlavniJidlo) || other.hlavniJidlo == hlavniJidlo)&&(identical(other.salatovyBar, salatovyBar) || other.salatovyBar == salatovyBar)&&(identical(other.piti, piti) || other.piti == piti)&&(identical(other.ostatni, ostatni) || other.ostatni == ostatni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,polevka,hlavniJidlo,salatovyBar,piti,ostatni);

@override
String toString() {
  return 'JidloKategorizovano(polevka: $polevka, hlavniJidlo: $hlavniJidlo, salatovyBar: $salatovyBar, piti: $piti, ostatni: $ostatni)';
}


}

/// @nodoc
abstract mixin class $JidloKategorizovanoCopyWith<$Res>  {
  factory $JidloKategorizovanoCopyWith(JidloKategorizovano value, $Res Function(JidloKategorizovano) _then) = _$JidloKategorizovanoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'polevka') String? polevka,@JsonKey(name: 'hlavniJidlo') String? hlavniJidlo,@JsonKey(name: 'salatovyBar') String? salatovyBar,@JsonKey(name: 'piti') String? piti,@JsonKey(name: 'ostatni') String? ostatni
});




}
/// @nodoc
class _$JidloKategorizovanoCopyWithImpl<$Res>
    implements $JidloKategorizovanoCopyWith<$Res> {
  _$JidloKategorizovanoCopyWithImpl(this._self, this._then);

  final JidloKategorizovano _self;
  final $Res Function(JidloKategorizovano) _then;

/// Create a copy of JidloKategorizovano
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? polevka = freezed,Object? hlavniJidlo = freezed,Object? salatovyBar = freezed,Object? piti = freezed,Object? ostatni = freezed,}) {
  return _then(_self.copyWith(
polevka: freezed == polevka ? _self.polevka : polevka // ignore: cast_nullable_to_non_nullable
as String?,hlavniJidlo: freezed == hlavniJidlo ? _self.hlavniJidlo : hlavniJidlo // ignore: cast_nullable_to_non_nullable
as String?,salatovyBar: freezed == salatovyBar ? _self.salatovyBar : salatovyBar // ignore: cast_nullable_to_non_nullable
as String?,piti: freezed == piti ? _self.piti : piti // ignore: cast_nullable_to_non_nullable
as String?,ostatni: freezed == ostatni ? _self.ostatni : ostatni // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [JidloKategorizovano].
extension JidloKategorizovanoPatterns on JidloKategorizovano {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JidloKategorizovano value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JidloKategorizovano() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JidloKategorizovano value)  $default,){
final _that = this;
switch (_that) {
case _JidloKategorizovano():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JidloKategorizovano value)?  $default,){
final _that = this;
switch (_that) {
case _JidloKategorizovano() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavniJidlo')  String? hlavniJidlo, @JsonKey(name: 'salatovyBar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JidloKategorizovano() when $default != null:
return $default(_that.polevka,_that.hlavniJidlo,_that.salatovyBar,_that.piti,_that.ostatni);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavniJidlo')  String? hlavniJidlo, @JsonKey(name: 'salatovyBar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)  $default,) {final _that = this;
switch (_that) {
case _JidloKategorizovano():
return $default(_that.polevka,_that.hlavniJidlo,_that.salatovyBar,_that.piti,_that.ostatni);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'polevka')  String? polevka, @JsonKey(name: 'hlavniJidlo')  String? hlavniJidlo, @JsonKey(name: 'salatovyBar')  String? salatovyBar, @JsonKey(name: 'piti')  String? piti, @JsonKey(name: 'ostatni')  String? ostatni)?  $default,) {final _that = this;
switch (_that) {
case _JidloKategorizovano() when $default != null:
return $default(_that.polevka,_that.hlavniJidlo,_that.salatovyBar,_that.piti,_that.ostatni);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JidloKategorizovano implements JidloKategorizovano {
  const _JidloKategorizovano({@JsonKey(name: 'polevka') this.polevka, @JsonKey(name: 'hlavniJidlo') this.hlavniJidlo, @JsonKey(name: 'salatovyBar') this.salatovyBar, @JsonKey(name: 'piti') this.piti, @JsonKey(name: 'ostatni') this.ostatni});
  factory _JidloKategorizovano.fromJson(Map<String, dynamic> json) => _$JidloKategorizovanoFromJson(json);

@override@JsonKey(name: 'polevka') final  String? polevka;
@override@JsonKey(name: 'hlavniJidlo') final  String? hlavniJidlo;
@override@JsonKey(name: 'salatovyBar') final  String? salatovyBar;
@override@JsonKey(name: 'piti') final  String? piti;
@override@JsonKey(name: 'ostatni') final  String? ostatni;

/// Create a copy of JidloKategorizovano
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JidloKategorizovanoCopyWith<_JidloKategorizovano> get copyWith => __$JidloKategorizovanoCopyWithImpl<_JidloKategorizovano>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JidloKategorizovanoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JidloKategorizovano&&(identical(other.polevka, polevka) || other.polevka == polevka)&&(identical(other.hlavniJidlo, hlavniJidlo) || other.hlavniJidlo == hlavniJidlo)&&(identical(other.salatovyBar, salatovyBar) || other.salatovyBar == salatovyBar)&&(identical(other.piti, piti) || other.piti == piti)&&(identical(other.ostatni, ostatni) || other.ostatni == ostatni));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,polevka,hlavniJidlo,salatovyBar,piti,ostatni);

@override
String toString() {
  return 'JidloKategorizovano(polevka: $polevka, hlavniJidlo: $hlavniJidlo, salatovyBar: $salatovyBar, piti: $piti, ostatni: $ostatni)';
}


}

/// @nodoc
abstract mixin class _$JidloKategorizovanoCopyWith<$Res> implements $JidloKategorizovanoCopyWith<$Res> {
  factory _$JidloKategorizovanoCopyWith(_JidloKategorizovano value, $Res Function(_JidloKategorizovano) _then) = __$JidloKategorizovanoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'polevka') String? polevka,@JsonKey(name: 'hlavniJidlo') String? hlavniJidlo,@JsonKey(name: 'salatovyBar') String? salatovyBar,@JsonKey(name: 'piti') String? piti,@JsonKey(name: 'ostatni') String? ostatni
});




}
/// @nodoc
class __$JidloKategorizovanoCopyWithImpl<$Res>
    implements _$JidloKategorizovanoCopyWith<$Res> {
  __$JidloKategorizovanoCopyWithImpl(this._self, this._then);

  final _JidloKategorizovano _self;
  final $Res Function(_JidloKategorizovano) _then;

/// Create a copy of JidloKategorizovano
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? polevka = freezed,Object? hlavniJidlo = freezed,Object? salatovyBar = freezed,Object? piti = freezed,Object? ostatni = freezed,}) {
  return _then(_JidloKategorizovano(
polevka: freezed == polevka ? _self.polevka : polevka // ignore: cast_nullable_to_non_nullable
as String?,hlavniJidlo: freezed == hlavniJidlo ? _self.hlavniJidlo : hlavniJidlo // ignore: cast_nullable_to_non_nullable
as String?,salatovyBar: freezed == salatovyBar ? _self.salatovyBar : salatovyBar // ignore: cast_nullable_to_non_nullable
as String?,piti: freezed == piti ? _self.piti : piti // ignore: cast_nullable_to_non_nullable
as String?,ostatni: freezed == ostatni ? _self.ostatni : ostatni // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
