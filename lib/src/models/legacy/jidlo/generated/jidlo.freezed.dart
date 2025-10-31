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

/// Název jídla
@JsonKey(name: 'nazev') String get nazev;/// Kategorizované jídlo
@JsonKey(name: 'kategorizovano') JidloKategorizovano? get kategorizovano;/// Objednal si uživatel toto jídlo?
@JsonKey(name: 'objednano') bool get objednano;/// Název varianty
@JsonKey(name: 'varianta') String get varianta;/// Cena
@JsonKey(name: 'cena') double? get cena;///Lze objednat?
@JsonKey(name: 'lzeObjednat') bool get lzeObjednat;/// Je jídlo aktuálně na burze?
@JsonKey(name: 'naBurze') bool get naBurze;/// Den, který je jídlo vydáváno
@JsonKey(name: 'den') DateTime get den;/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
@JsonKey(name: 'alergeny') List<Alergen> get alergeny;/// URL pro požadavek na objednání jídla
@JsonKey(name: 'orderUrl') String? get orderUrl;/// URL pro vložení jídla na burzu
@JsonKey(name: 'burzaUrl') String? get burzaUrl;
/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JidloCopyWith<Jidlo> get copyWith => _$JidloCopyWithImpl<Jidlo>(this as Jidlo, _$identity);

  /// Serializes this Jidlo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Jidlo&&(identical(other.nazev, nazev) || other.nazev == nazev)&&const DeepCollectionEquality().equals(other.kategorizovano, kategorizovano)&&(identical(other.objednano, objednano) || other.objednano == objednano)&&(identical(other.varianta, varianta) || other.varianta == varianta)&&(identical(other.cena, cena) || other.cena == cena)&&(identical(other.lzeObjednat, lzeObjednat) || other.lzeObjednat == lzeObjednat)&&(identical(other.naBurze, naBurze) || other.naBurze == naBurze)&&(identical(other.den, den) || other.den == den)&&const DeepCollectionEquality().equals(other.alergeny, alergeny)&&(identical(other.orderUrl, orderUrl) || other.orderUrl == orderUrl)&&(identical(other.burzaUrl, burzaUrl) || other.burzaUrl == burzaUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nazev,const DeepCollectionEquality().hash(kategorizovano),objednano,varianta,cena,lzeObjednat,naBurze,den,const DeepCollectionEquality().hash(alergeny),orderUrl,burzaUrl);

@override
String toString() {
  return 'Jidlo(nazev: $nazev, kategorizovano: $kategorizovano, objednano: $objednano, varianta: $varianta, cena: $cena, lzeObjednat: $lzeObjednat, naBurze: $naBurze, den: $den, alergeny: $alergeny, orderUrl: $orderUrl, burzaUrl: $burzaUrl)';
}


}

/// @nodoc
abstract mixin class $JidloCopyWith<$Res>  {
  factory $JidloCopyWith(Jidlo value, $Res Function(Jidlo) _then) = _$JidloCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'kategorizovano') JidloKategorizovano? kategorizovano,@JsonKey(name: 'objednano') bool objednano,@JsonKey(name: 'varianta') String varianta,@JsonKey(name: 'cena') double? cena,@JsonKey(name: 'lzeObjednat') bool lzeObjednat,@JsonKey(name: 'naBurze') bool naBurze,@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'alergeny') List<Alergen> alergeny,@JsonKey(name: 'orderUrl') String? orderUrl,@JsonKey(name: 'burzaUrl') String? burzaUrl
});




}
/// @nodoc
class _$JidloCopyWithImpl<$Res>
    implements $JidloCopyWith<$Res> {
  _$JidloCopyWithImpl(this._self, this._then);

  final Jidlo _self;
  final $Res Function(Jidlo) _then;

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nazev = null,Object? kategorizovano = freezed,Object? objednano = null,Object? varianta = null,Object? cena = freezed,Object? lzeObjednat = null,Object? naBurze = null,Object? den = null,Object? alergeny = null,Object? orderUrl = freezed,Object? burzaUrl = freezed,}) {
  return _then(_self.copyWith(
nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,kategorizovano: freezed == kategorizovano ? _self.kategorizovano : kategorizovano // ignore: cast_nullable_to_non_nullable
as JidloKategorizovano?,objednano: null == objednano ? _self.objednano : objednano // ignore: cast_nullable_to_non_nullable
as bool,varianta: null == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String,cena: freezed == cena ? _self.cena : cena // ignore: cast_nullable_to_non_nullable
as double?,lzeObjednat: null == lzeObjednat ? _self.lzeObjednat : lzeObjednat // ignore: cast_nullable_to_non_nullable
as bool,naBurze: null == naBurze ? _self.naBurze : naBurze // ignore: cast_nullable_to_non_nullable
as bool,den: null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,alergeny: null == alergeny ? _self.alergeny : alergeny // ignore: cast_nullable_to_non_nullable
as List<Alergen>,orderUrl: freezed == orderUrl ? _self.orderUrl : orderUrl // ignore: cast_nullable_to_non_nullable
as String?,burzaUrl: freezed == burzaUrl ? _self.burzaUrl : burzaUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'kategorizovano')  JidloKategorizovano? kategorizovano, @JsonKey(name: 'objednano')  bool objednano, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'lzeObjednat')  bool lzeObjednat, @JsonKey(name: 'naBurze')  bool naBurze, @JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'alergeny')  List<Alergen> alergeny, @JsonKey(name: 'orderUrl')  String? orderUrl, @JsonKey(name: 'burzaUrl')  String? burzaUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
return $default(_that.nazev,_that.kategorizovano,_that.objednano,_that.varianta,_that.cena,_that.lzeObjednat,_that.naBurze,_that.den,_that.alergeny,_that.orderUrl,_that.burzaUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'kategorizovano')  JidloKategorizovano? kategorizovano, @JsonKey(name: 'objednano')  bool objednano, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'lzeObjednat')  bool lzeObjednat, @JsonKey(name: 'naBurze')  bool naBurze, @JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'alergeny')  List<Alergen> alergeny, @JsonKey(name: 'orderUrl')  String? orderUrl, @JsonKey(name: 'burzaUrl')  String? burzaUrl)  $default,) {final _that = this;
switch (_that) {
case _Jidlo():
return $default(_that.nazev,_that.kategorizovano,_that.objednano,_that.varianta,_that.cena,_that.lzeObjednat,_that.naBurze,_that.den,_that.alergeny,_that.orderUrl,_that.burzaUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'nazev')  String nazev, @JsonKey(name: 'kategorizovano')  JidloKategorizovano? kategorizovano, @JsonKey(name: 'objednano')  bool objednano, @JsonKey(name: 'varianta')  String varianta, @JsonKey(name: 'cena')  double? cena, @JsonKey(name: 'lzeObjednat')  bool lzeObjednat, @JsonKey(name: 'naBurze')  bool naBurze, @JsonKey(name: 'den')  DateTime den, @JsonKey(name: 'alergeny')  List<Alergen> alergeny, @JsonKey(name: 'orderUrl')  String? orderUrl, @JsonKey(name: 'burzaUrl')  String? burzaUrl)?  $default,) {final _that = this;
switch (_that) {
case _Jidlo() when $default != null:
return $default(_that.nazev,_that.kategorizovano,_that.objednano,_that.varianta,_that.cena,_that.lzeObjednat,_that.naBurze,_that.den,_that.alergeny,_that.orderUrl,_that.burzaUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Jidlo implements Jidlo {
  const _Jidlo({@JsonKey(name: 'nazev') required this.nazev, @JsonKey(name: 'kategorizovano') this.kategorizovano, @JsonKey(name: 'objednano') required this.objednano, @JsonKey(name: 'varianta') required this.varianta, @JsonKey(name: 'cena') this.cena, @JsonKey(name: 'lzeObjednat') required this.lzeObjednat, @JsonKey(name: 'naBurze') required this.naBurze, @JsonKey(name: 'den') required this.den, @JsonKey(name: 'alergeny') final  List<Alergen> alergeny = const [], @JsonKey(name: 'orderUrl') this.orderUrl, @JsonKey(name: 'burzaUrl') this.burzaUrl}): _alergeny = alergeny;
  factory _Jidlo.fromJson(Map<String, dynamic> json) => _$JidloFromJson(json);

/// Název jídla
@override@JsonKey(name: 'nazev') final  String nazev;
/// Kategorizované jídlo
@override@JsonKey(name: 'kategorizovano') final  JidloKategorizovano? kategorizovano;
/// Objednal si uživatel toto jídlo?
@override@JsonKey(name: 'objednano') final  bool objednano;
/// Název varianty
@override@JsonKey(name: 'varianta') final  String varianta;
/// Cena
@override@JsonKey(name: 'cena') final  double? cena;
///Lze objednat?
@override@JsonKey(name: 'lzeObjednat') final  bool lzeObjednat;
/// Je jídlo aktuálně na burze?
@override@JsonKey(name: 'naBurze') final  bool naBurze;
/// Den, který je jídlo vydáváno
@override@JsonKey(name: 'den') final  DateTime den;
/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
 final  List<Alergen> _alergeny;
/// Seznam alergenů
///
/// Pokud se žádný nepodařilo najít, vrací prázdný seznam
@override@JsonKey(name: 'alergeny') List<Alergen> get alergeny {
  if (_alergeny is EqualUnmodifiableListView) return _alergeny;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_alergeny);
}

/// URL pro požadavek na objednání jídla
@override@JsonKey(name: 'orderUrl') final  String? orderUrl;
/// URL pro vložení jídla na burzu
@override@JsonKey(name: 'burzaUrl') final  String? burzaUrl;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Jidlo&&(identical(other.nazev, nazev) || other.nazev == nazev)&&const DeepCollectionEquality().equals(other.kategorizovano, kategorizovano)&&(identical(other.objednano, objednano) || other.objednano == objednano)&&(identical(other.varianta, varianta) || other.varianta == varianta)&&(identical(other.cena, cena) || other.cena == cena)&&(identical(other.lzeObjednat, lzeObjednat) || other.lzeObjednat == lzeObjednat)&&(identical(other.naBurze, naBurze) || other.naBurze == naBurze)&&(identical(other.den, den) || other.den == den)&&const DeepCollectionEquality().equals(other._alergeny, _alergeny)&&(identical(other.orderUrl, orderUrl) || other.orderUrl == orderUrl)&&(identical(other.burzaUrl, burzaUrl) || other.burzaUrl == burzaUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nazev,const DeepCollectionEquality().hash(kategorizovano),objednano,varianta,cena,lzeObjednat,naBurze,den,const DeepCollectionEquality().hash(_alergeny),orderUrl,burzaUrl);

@override
String toString() {
  return 'Jidlo(nazev: $nazev, kategorizovano: $kategorizovano, objednano: $objednano, varianta: $varianta, cena: $cena, lzeObjednat: $lzeObjednat, naBurze: $naBurze, den: $den, alergeny: $alergeny, orderUrl: $orderUrl, burzaUrl: $burzaUrl)';
}


}

/// @nodoc
abstract mixin class _$JidloCopyWith<$Res> implements $JidloCopyWith<$Res> {
  factory _$JidloCopyWith(_Jidlo value, $Res Function(_Jidlo) _then) = __$JidloCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'nazev') String nazev,@JsonKey(name: 'kategorizovano') JidloKategorizovano? kategorizovano,@JsonKey(name: 'objednano') bool objednano,@JsonKey(name: 'varianta') String varianta,@JsonKey(name: 'cena') double? cena,@JsonKey(name: 'lzeObjednat') bool lzeObjednat,@JsonKey(name: 'naBurze') bool naBurze,@JsonKey(name: 'den') DateTime den,@JsonKey(name: 'alergeny') List<Alergen> alergeny,@JsonKey(name: 'orderUrl') String? orderUrl,@JsonKey(name: 'burzaUrl') String? burzaUrl
});




}
/// @nodoc
class __$JidloCopyWithImpl<$Res>
    implements _$JidloCopyWith<$Res> {
  __$JidloCopyWithImpl(this._self, this._then);

  final _Jidlo _self;
  final $Res Function(_Jidlo) _then;

/// Create a copy of Jidlo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nazev = null,Object? kategorizovano = freezed,Object? objednano = null,Object? varianta = null,Object? cena = freezed,Object? lzeObjednat = null,Object? naBurze = null,Object? den = null,Object? alergeny = null,Object? orderUrl = freezed,Object? burzaUrl = freezed,}) {
  return _then(_Jidlo(
nazev: null == nazev ? _self.nazev : nazev // ignore: cast_nullable_to_non_nullable
as String,kategorizovano: freezed == kategorizovano ? _self.kategorizovano : kategorizovano // ignore: cast_nullable_to_non_nullable
as JidloKategorizovano?,objednano: null == objednano ? _self.objednano : objednano // ignore: cast_nullable_to_non_nullable
as bool,varianta: null == varianta ? _self.varianta : varianta // ignore: cast_nullable_to_non_nullable
as String,cena: freezed == cena ? _self.cena : cena // ignore: cast_nullable_to_non_nullable
as double?,lzeObjednat: null == lzeObjednat ? _self.lzeObjednat : lzeObjednat // ignore: cast_nullable_to_non_nullable
as bool,naBurze: null == naBurze ? _self.naBurze : naBurze // ignore: cast_nullable_to_non_nullable
as bool,den: null == den ? _self.den : den // ignore: cast_nullable_to_non_nullable
as DateTime,alergeny: null == alergeny ? _self._alergeny : alergeny // ignore: cast_nullable_to_non_nullable
as List<Alergen>,orderUrl: freezed == orderUrl ? _self.orderUrl : orderUrl // ignore: cast_nullable_to_non_nullable
as String?,burzaUrl: freezed == burzaUrl ? _self.burzaUrl : burzaUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
