// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uzivatel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Uzivatel {

/// Uživatelské jméno
@JsonKey(name: 'uzivatelskeJmeno') String? get uzivatelskeJmeno;/// Jméno, jak je uvedené v základních údajích o uživateli
@JsonKey(name: 'jmeno') String? get jmeno;/// Příjmení, jak je uvedené v základních údajích o uživateli
@JsonKey(name: 'prijmeni') String? get prijmeni;/// Kategorie uživatele
@JsonKey(name: 'kategorie') String? get kategorie;/// Účet jídelny pro zasílání plateb
@JsonKey(name: 'ucetProPlatby') String? get ucetProPlatby;/// Variabilní symbol
@JsonKey(name: 'varSymbol') String? get varSymbol;/// Specifický symbol
@JsonKey(name: 'specSymbol') String? get specSymbol;/// Aktuální stav kreditu
@JsonKey(name: 'kredit') double get kredit;
/// Create a copy of Uzivatel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UzivatelCopyWith<Uzivatel> get copyWith => _$UzivatelCopyWithImpl<Uzivatel>(this as Uzivatel, _$identity);

  /// Serializes this Uzivatel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Uzivatel&&(identical(other.uzivatelskeJmeno, uzivatelskeJmeno) || other.uzivatelskeJmeno == uzivatelskeJmeno)&&(identical(other.jmeno, jmeno) || other.jmeno == jmeno)&&(identical(other.prijmeni, prijmeni) || other.prijmeni == prijmeni)&&(identical(other.kategorie, kategorie) || other.kategorie == kategorie)&&(identical(other.ucetProPlatby, ucetProPlatby) || other.ucetProPlatby == ucetProPlatby)&&(identical(other.varSymbol, varSymbol) || other.varSymbol == varSymbol)&&(identical(other.specSymbol, specSymbol) || other.specSymbol == specSymbol)&&(identical(other.kredit, kredit) || other.kredit == kredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uzivatelskeJmeno,jmeno,prijmeni,kategorie,ucetProPlatby,varSymbol,specSymbol,kredit);

@override
String toString() {
  return 'Uzivatel(uzivatelskeJmeno: $uzivatelskeJmeno, jmeno: $jmeno, prijmeni: $prijmeni, kategorie: $kategorie, ucetProPlatby: $ucetProPlatby, varSymbol: $varSymbol, specSymbol: $specSymbol, kredit: $kredit)';
}


}

/// @nodoc
abstract mixin class $UzivatelCopyWith<$Res>  {
  factory $UzivatelCopyWith(Uzivatel value, $Res Function(Uzivatel) _then) = _$UzivatelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'uzivatelskeJmeno') String? uzivatelskeJmeno,@JsonKey(name: 'jmeno') String? jmeno,@JsonKey(name: 'prijmeni') String? prijmeni,@JsonKey(name: 'kategorie') String? kategorie,@JsonKey(name: 'ucetProPlatby') String? ucetProPlatby,@JsonKey(name: 'varSymbol') String? varSymbol,@JsonKey(name: 'specSymbol') String? specSymbol,@JsonKey(name: 'kredit') double kredit
});




}
/// @nodoc
class _$UzivatelCopyWithImpl<$Res>
    implements $UzivatelCopyWith<$Res> {
  _$UzivatelCopyWithImpl(this._self, this._then);

  final Uzivatel _self;
  final $Res Function(Uzivatel) _then;

/// Create a copy of Uzivatel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uzivatelskeJmeno = freezed,Object? jmeno = freezed,Object? prijmeni = freezed,Object? kategorie = freezed,Object? ucetProPlatby = freezed,Object? varSymbol = freezed,Object? specSymbol = freezed,Object? kredit = null,}) {
  return _then(_self.copyWith(
uzivatelskeJmeno: freezed == uzivatelskeJmeno ? _self.uzivatelskeJmeno : uzivatelskeJmeno // ignore: cast_nullable_to_non_nullable
as String?,jmeno: freezed == jmeno ? _self.jmeno : jmeno // ignore: cast_nullable_to_non_nullable
as String?,prijmeni: freezed == prijmeni ? _self.prijmeni : prijmeni // ignore: cast_nullable_to_non_nullable
as String?,kategorie: freezed == kategorie ? _self.kategorie : kategorie // ignore: cast_nullable_to_non_nullable
as String?,ucetProPlatby: freezed == ucetProPlatby ? _self.ucetProPlatby : ucetProPlatby // ignore: cast_nullable_to_non_nullable
as String?,varSymbol: freezed == varSymbol ? _self.varSymbol : varSymbol // ignore: cast_nullable_to_non_nullable
as String?,specSymbol: freezed == specSymbol ? _self.specSymbol : specSymbol // ignore: cast_nullable_to_non_nullable
as String?,kredit: null == kredit ? _self.kredit : kredit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Uzivatel].
extension UzivatelPatterns on Uzivatel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Uzivatel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Uzivatel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Uzivatel value)  $default,){
final _that = this;
switch (_that) {
case _Uzivatel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Uzivatel value)?  $default,){
final _that = this;
switch (_that) {
case _Uzivatel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'uzivatelskeJmeno')  String? uzivatelskeJmeno, @JsonKey(name: 'jmeno')  String? jmeno, @JsonKey(name: 'prijmeni')  String? prijmeni, @JsonKey(name: 'kategorie')  String? kategorie, @JsonKey(name: 'ucetProPlatby')  String? ucetProPlatby, @JsonKey(name: 'varSymbol')  String? varSymbol, @JsonKey(name: 'specSymbol')  String? specSymbol, @JsonKey(name: 'kredit')  double kredit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Uzivatel() when $default != null:
return $default(_that.uzivatelskeJmeno,_that.jmeno,_that.prijmeni,_that.kategorie,_that.ucetProPlatby,_that.varSymbol,_that.specSymbol,_that.kredit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'uzivatelskeJmeno')  String? uzivatelskeJmeno, @JsonKey(name: 'jmeno')  String? jmeno, @JsonKey(name: 'prijmeni')  String? prijmeni, @JsonKey(name: 'kategorie')  String? kategorie, @JsonKey(name: 'ucetProPlatby')  String? ucetProPlatby, @JsonKey(name: 'varSymbol')  String? varSymbol, @JsonKey(name: 'specSymbol')  String? specSymbol, @JsonKey(name: 'kredit')  double kredit)  $default,) {final _that = this;
switch (_that) {
case _Uzivatel():
return $default(_that.uzivatelskeJmeno,_that.jmeno,_that.prijmeni,_that.kategorie,_that.ucetProPlatby,_that.varSymbol,_that.specSymbol,_that.kredit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'uzivatelskeJmeno')  String? uzivatelskeJmeno, @JsonKey(name: 'jmeno')  String? jmeno, @JsonKey(name: 'prijmeni')  String? prijmeni, @JsonKey(name: 'kategorie')  String? kategorie, @JsonKey(name: 'ucetProPlatby')  String? ucetProPlatby, @JsonKey(name: 'varSymbol')  String? varSymbol, @JsonKey(name: 'specSymbol')  String? specSymbol, @JsonKey(name: 'kredit')  double kredit)?  $default,) {final _that = this;
switch (_that) {
case _Uzivatel() when $default != null:
return $default(_that.uzivatelskeJmeno,_that.jmeno,_that.prijmeni,_that.kategorie,_that.ucetProPlatby,_that.varSymbol,_that.specSymbol,_that.kredit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Uzivatel implements Uzivatel {
  const _Uzivatel({@JsonKey(name: 'uzivatelskeJmeno') this.uzivatelskeJmeno, @JsonKey(name: 'jmeno') this.jmeno, @JsonKey(name: 'prijmeni') this.prijmeni, @JsonKey(name: 'kategorie') this.kategorie, @JsonKey(name: 'ucetProPlatby') this.ucetProPlatby, @JsonKey(name: 'varSymbol') this.varSymbol, @JsonKey(name: 'specSymbol') this.specSymbol, @JsonKey(name: 'kredit') this.kredit = 0});
  factory _Uzivatel.fromJson(Map<String, dynamic> json) => _$UzivatelFromJson(json);

/// Uživatelské jméno
@override@JsonKey(name: 'uzivatelskeJmeno') final  String? uzivatelskeJmeno;
/// Jméno, jak je uvedené v základních údajích o uživateli
@override@JsonKey(name: 'jmeno') final  String? jmeno;
/// Příjmení, jak je uvedené v základních údajích o uživateli
@override@JsonKey(name: 'prijmeni') final  String? prijmeni;
/// Kategorie uživatele
@override@JsonKey(name: 'kategorie') final  String? kategorie;
/// Účet jídelny pro zasílání plateb
@override@JsonKey(name: 'ucetProPlatby') final  String? ucetProPlatby;
/// Variabilní symbol
@override@JsonKey(name: 'varSymbol') final  String? varSymbol;
/// Specifický symbol
@override@JsonKey(name: 'specSymbol') final  String? specSymbol;
/// Aktuální stav kreditu
@override@JsonKey(name: 'kredit') final  double kredit;

/// Create a copy of Uzivatel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UzivatelCopyWith<_Uzivatel> get copyWith => __$UzivatelCopyWithImpl<_Uzivatel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UzivatelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Uzivatel&&(identical(other.uzivatelskeJmeno, uzivatelskeJmeno) || other.uzivatelskeJmeno == uzivatelskeJmeno)&&(identical(other.jmeno, jmeno) || other.jmeno == jmeno)&&(identical(other.prijmeni, prijmeni) || other.prijmeni == prijmeni)&&(identical(other.kategorie, kategorie) || other.kategorie == kategorie)&&(identical(other.ucetProPlatby, ucetProPlatby) || other.ucetProPlatby == ucetProPlatby)&&(identical(other.varSymbol, varSymbol) || other.varSymbol == varSymbol)&&(identical(other.specSymbol, specSymbol) || other.specSymbol == specSymbol)&&(identical(other.kredit, kredit) || other.kredit == kredit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uzivatelskeJmeno,jmeno,prijmeni,kategorie,ucetProPlatby,varSymbol,specSymbol,kredit);

@override
String toString() {
  return 'Uzivatel(uzivatelskeJmeno: $uzivatelskeJmeno, jmeno: $jmeno, prijmeni: $prijmeni, kategorie: $kategorie, ucetProPlatby: $ucetProPlatby, varSymbol: $varSymbol, specSymbol: $specSymbol, kredit: $kredit)';
}


}

/// @nodoc
abstract mixin class _$UzivatelCopyWith<$Res> implements $UzivatelCopyWith<$Res> {
  factory _$UzivatelCopyWith(_Uzivatel value, $Res Function(_Uzivatel) _then) = __$UzivatelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'uzivatelskeJmeno') String? uzivatelskeJmeno,@JsonKey(name: 'jmeno') String? jmeno,@JsonKey(name: 'prijmeni') String? prijmeni,@JsonKey(name: 'kategorie') String? kategorie,@JsonKey(name: 'ucetProPlatby') String? ucetProPlatby,@JsonKey(name: 'varSymbol') String? varSymbol,@JsonKey(name: 'specSymbol') String? specSymbol,@JsonKey(name: 'kredit') double kredit
});




}
/// @nodoc
class __$UzivatelCopyWithImpl<$Res>
    implements _$UzivatelCopyWith<$Res> {
  __$UzivatelCopyWithImpl(this._self, this._then);

  final _Uzivatel _self;
  final $Res Function(_Uzivatel) _then;

/// Create a copy of Uzivatel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uzivatelskeJmeno = freezed,Object? jmeno = freezed,Object? prijmeni = freezed,Object? kategorie = freezed,Object? ucetProPlatby = freezed,Object? varSymbol = freezed,Object? specSymbol = freezed,Object? kredit = null,}) {
  return _then(_Uzivatel(
uzivatelskeJmeno: freezed == uzivatelskeJmeno ? _self.uzivatelskeJmeno : uzivatelskeJmeno // ignore: cast_nullable_to_non_nullable
as String?,jmeno: freezed == jmeno ? _self.jmeno : jmeno // ignore: cast_nullable_to_non_nullable
as String?,prijmeni: freezed == prijmeni ? _self.prijmeni : prijmeni // ignore: cast_nullable_to_non_nullable
as String?,kategorie: freezed == kategorie ? _self.kategorie : kategorie // ignore: cast_nullable_to_non_nullable
as String?,ucetProPlatby: freezed == ucetProPlatby ? _self.ucetProPlatby : ucetProPlatby // ignore: cast_nullable_to_non_nullable
as String?,varSymbol: freezed == varSymbol ? _self.varSymbol : varSymbol // ignore: cast_nullable_to_non_nullable
as String?,specSymbol: freezed == specSymbol ? _self.specSymbol : specSymbol // ignore: cast_nullable_to_non_nullable
as String?,kredit: null == kredit ? _self.kredit : kredit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
