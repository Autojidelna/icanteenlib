// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../jidlo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Jidlo {

@JsonKey(name: 'datum') DateTime get datum;/// Objednáno, na burze atd.
@JsonKey(name: 'stav') StavJidla get stav;/// Název varianty (např. Oběd 2)
@JsonKey(name: 'varianta') String get varianta;@JsonKey(name: 'nazev') String get nazev;/// Rozpis polévky, hlavního chodu atd.
@JsonKey(name: 'slozeni_jidla') SlozeniJidla? get slozeniJidla;/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
@JsonKey(name: 'alergeny') Set<Alergen> get alergeny;@JsonKey(name: 'cena') double? get cena;/// Počet zbývajících kusů na burze
@JsonKey(name: 'pocet') int? get pocet;/// URL pro obědnání, vložení na burzu nebo na jinou akci
@JsonKey(name: 'url') String? get url;
/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JidloCopyWith<Jidlo> get copyWith => _$JidloCopyWithImpl<Jidlo>(this as Jidlo, _$identity);

  /// Serializes this Jidlo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Jidlo&&(identical(other.datum, datum) || other.datum == datum)&&(identical(other.stav, stav) || other.stav == stav)&&(identical(other.varianta, varianta) || other.varianta == varianta)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.slozeniJidla, slozeniJidla) || other.slozeniJidla == slozeniJidla)&&const DeepCollectionEquality().equals(other.alergeny, alergeny)&&(identical(other.cena, cena) || other.cena == cena)&&(identical(other.pocet, pocet) || other.pocet == pocet)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datum,stav,varianta,nazev,slozeniJidla,const DeepCollectionEquality().hash(alergeny),cena,pocet,url);

@override
String toString() {
  return 'Jidlo(datum: $datum, stav: $stav, varianta: $varianta, nazev: $nazev, slozeniJidla: $slozeniJidla, alergeny: $alergeny, cena: $cena, pocet: $pocet, url: $url)';
}


}

/// @nodoc
abstract mixin class $JidloCopyWith<$Res>  {
  factory $JidloCopyWith(Jidlo value, $Res Function(Jidlo) _then) = _$JidloCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'datum') DateTime datum,@JsonKey(name: 'stav') StavJidla stav,@JsonKey(name: 'varianta') String varianta,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'slozeni_jidla') SlozeniJidla? slozeniJidla,@JsonKey(name: 'alergeny') Set<Alergen> alergeny,@JsonKey(name: 'cena') double? cena,@JsonKey(name: 'pocet') int? pocet,@JsonKey(name: 'url') String? url
});


$SlozeniJidlaCopyWith<$Res>? get slozeniJidla;

}
/// @nodoc
class _$JidloCopyWithImpl<$Res>
    implements $JidloCopyWith<$Res> {
  _$JidloCopyWithImpl(this._self, this._then);

  final Jidlo _self;
  final $Res Function(Jidlo) _then;

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? datum = null,Object? stav = null,Object? varianta = null,Object? nazev = null,Object? slozeniJidla = freezed,Object? alergeny = null,Object? cena = freezed,Object? pocet = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
datum: null == datum ? _self.datum : datum // ignore: cast_nullable_to_non_nullable
as DateTime,stav: null == stav ? _self.stav : stav // ignore: cast_nullable_to_non_nullable
as StavJidla,varianta: null == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,slozeniJidla: freezed == slozeniJidla ? _self.slozeniJidla : slozeniJidla // ignore: cast_nullable_to_non_nullable
as SlozeniJidla?,alergeny: null == alergeny ? _self.alergeny : alergeny // ignore: cast_nullable_to_non_nullable
as Set<Alergen>,cena: freezed == cena ? _self.cena : cena // ignore: cast_nullable_to_non_nullable
as double?,pocet: freezed == pocet ? _self.pocet : pocet // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlozeniJidlaCopyWith<$Res>? get slozeniJidla {
    if (_self.slozeniJidla == null) {
    return null;
  }

  return $SlozeniJidlaCopyWith<$Res>(_self.slozeniJidla!, (value) {
    return _then(_self.copyWith(slozeniJidla: value));
  });
}
}


/// Adds pattern-matching-related methods to [Jidlo].
extension JidloPatterns on Jidlo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Jidlo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Jidlo value)  $default,){
final _that = this;
switch (_that) {
case _Jidlo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Jidlo value)?  $default,){
final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'datum')  DateTime datum, @JsonKey(name: 'stav')  StavJidla stav, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'slozeni_jidla')  SlozeniJidla? slozeniJidla, @JsonKey(name: 'alergeny')  Set<Alergen> alergeny, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'pocet')  int? pocet, @JsonKey(name: 'url')  String? url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
return $default(_that.datum,_that.stav,_that.varianta,_that.nazev,_that.slozeniJidla,_that.alergeny,_that.cena,_that.pocet,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'datum')  DateTime datum, @JsonKey(name: 'stav')  StavJidla stav, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'slozeni_jidla')  SlozeniJidla? slozeniJidla, @JsonKey(name: 'alergeny')  Set<Alergen> alergeny, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'pocet')  int? pocet, @JsonKey(name: 'url')  String? url)  $default,) {final _that = this;
switch (_that) {
case _Jidlo():
return $default(_that.datum,_that.stav,_that.varianta,_that.nazev,_that.slozeniJidla,_that.alergeny,_that.cena,_that.pocet,_that.url);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'datum')  DateTime datum, @JsonKey(name: 'stav')  StavJidla stav, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'slozeni_jidla')  SlozeniJidla? slozeniJidla, @JsonKey(name: 'alergeny')  Set<Alergen> alergeny, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'pocet')  int? pocet, @JsonKey(name: 'url')  String? url)?  $default,) {final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
return $default(_that.datum,_that.stav,_that.varianta,_that.nazev,_that.slozeniJidla,_that.alergeny,_that.cena,_that.pocet,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Jidlo implements Jidlo {
  const _Jidlo({@JsonKey(name: 'datum') required this.datum, @JsonKey(name: 'stav') required this.stav, @JsonKey(name: 'varianta') required this.varianta, @JsonKey(name: 'nazev') required this.nazev, @JsonKey(name: 'slozeni_jidla') this.slozeniJidla, @JsonKey(name: 'alergeny') final  Set<Alergen> alergeny = const <Alergen>{}, @JsonKey(name: 'cena') this.cena, @JsonKey(name: 'pocet') this.pocet, @JsonKey(name: 'url') this.url}): _alergeny = alergeny;
  factory _Jidlo.fromJson(Map<String, dynamic> json) => _$JidloFromJson(json);

@override@JsonKey(name: 'datum') final  DateTime datum;
/// Objednáno, na burze atd.
@override@JsonKey(name: 'stav') final  StavJidla stav;
/// Název varianty (např. Oběd 2)
@override@JsonKey(name: 'varianta') final  String varianta;
@override@JsonKey(name: 'nazev') final  String nazev;
/// Rozpis polévky, hlavního chodu atd.
@override@JsonKey(name: 'slozeni_jidla') final  SlozeniJidla? slozeniJidla;
/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
 final  Set<Alergen> _alergeny;
/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
@override@JsonKey(name: 'alergeny') Set<Alergen> get alergeny {
  if (_alergeny is EqualUnmodifiableSetView) return _alergeny;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_alergeny);
}

@override@JsonKey(name: 'cena') final  double? cena;
/// Počet zbývajících kusů na burze
@override@JsonKey(name: 'pocet') final  int? pocet;
/// URL pro obědnání, vložení na burzu nebo na jinou akci
@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JidloCopyWith<_Jidlo> get copyWith => __$JidloCopyWithImpl<_Jidlo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JidloToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Jidlo&&(identical(other.datum, datum) || other.datum == datum)&&(identical(other.stav, stav) || other.stav == stav)&&(identical(other.varianta, varianta) || other.varianta == varianta)&&(identical(other.nazev, nazev) || other.nazev == nazev)&&(identical(other.slozeniJidla, slozeniJidla) || other.slozeniJidla == slozeniJidla)&&const DeepCollectionEquality().equals(other._alergeny, _alergeny)&&(identical(other.cena, cena) || other.cena == cena)&&(identical(other.pocet, pocet) || other.pocet == pocet)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,datum,stav,varianta,nazev,slozeniJidla,const DeepCollectionEquality().hash(_alergeny),cena,pocet,url);

@override
String toString() {
  return 'Jidlo(datum: $datum, stav: $stav, varianta: $varianta, nazev: $nazev, slozeniJidla: $slozeniJidla, alergeny: $alergeny, cena: $cena, pocet: $pocet, url: $url)';
}


}

/// @nodoc
abstract mixin class _$JidloCopyWith<$Res> implements $JidloCopyWith<$Res> {
  factory _$JidloCopyWith(_Jidlo value, $Res Function(_Jidlo) _then) = __$JidloCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'datum') DateTime datum,@JsonKey(name: 'stav') StavJidla stav,@JsonKey(name: 'varianta') String varianta,@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'slozeni_jidla') SlozeniJidla? slozeniJidla,@JsonKey(name: 'alergeny') Set<Alergen> alergeny,@JsonKey(name: 'cena') double? cena,@JsonKey(name: 'pocet') int? pocet,@JsonKey(name: 'url') String? url
});


@override $SlozeniJidlaCopyWith<$Res>? get slozeniJidla;

}
/// @nodoc
class __$JidloCopyWithImpl<$Res>
    implements _$JidloCopyWith<$Res> {
  __$JidloCopyWithImpl(this._self, this._then);

  final _Jidlo _self;
  final $Res Function(_Jidlo) _then;

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? datum = null,Object? stav = null,Object? varianta = null,Object? nazev = null,Object? slozeniJidla = freezed,Object? alergeny = null,Object? cena = freezed,Object? pocet = freezed,Object? url = freezed,}) {
  return _then(_Jidlo(
datum: null == datum ? _self.datum : datum // ignore: cast_nullable_to_non_nullable
as DateTime,stav: null == stav ? _self.stav : stav // ignore: cast_nullable_to_non_nullable
as StavJidla,varianta: null == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String,nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,slozeniJidla: freezed == slozeniJidla ? _self.slozeniJidla : slozeniJidla // ignore: cast_nullable_to_non_nullable
as SlozeniJidla?,alergeny: null == alergeny ? _self._alergeny : alergeny // ignore: cast_nullable_to_non_nullable
as Set<Alergen>,cena: freezed == cena ? _self.cena : cena // ignore: cast_nullable_to_non_nullable
as double?,pocet: freezed == pocet ? _self.pocet : pocet // ignore: cast_nullable_to_non_nullable
as int?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SlozeniJidlaCopyWith<$Res>? get slozeniJidla {
    if (_self.slozeniJidla == null) {
    return null;
  }

  return $SlozeniJidlaCopyWith<$Res>(_self.slozeniJidla!, (value) {
    return _then(_self.copyWith(slozeniJidla: value));
  });
}
}

// dart format on
