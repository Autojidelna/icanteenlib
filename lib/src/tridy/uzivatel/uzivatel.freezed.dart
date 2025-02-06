// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uzivatel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Uzivatel _$UzivatelFromJson(Map<String, dynamic> json) {
  return _Uzivatel.fromJson(json);
}

/// @nodoc
mixin _$Uzivatel {
  /// Uživatelské jméno
  @JsonKey(name: 'uzivatelskeJmeno')
  String? get uzivatelskeJmeno => throw _privateConstructorUsedError;

  /// Jméno, jak je uvedené v základních údajích o uživateli
  @JsonKey(name: 'jmeno')
  String? get jmeno => throw _privateConstructorUsedError;

  /// Příjmení, jak je uvedené v základních údajích o uživateli
  @JsonKey(name: 'prijmeni')
  String? get prijmeni => throw _privateConstructorUsedError;

  /// Kategorie uživatele
  @JsonKey(name: 'kategorie')
  String? get kategorie => throw _privateConstructorUsedError;

  /// Účet jídelny pro zasílání plateb
  @JsonKey(name: 'ucetProPlatby')
  String? get ucetProPlatby => throw _privateConstructorUsedError;

  /// Variabilní symbol
  @JsonKey(name: 'varSymbol')
  String? get varSymbol => throw _privateConstructorUsedError;

  /// Specifický symbol
  @JsonKey(name: 'specSymbol')
  String? get specSymbol => throw _privateConstructorUsedError;

  /// Aktuální stav kreditu
  @JsonKey(name: 'kredit')
  double get kredit => throw _privateConstructorUsedError;

  /// Serializes this Uzivatel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Uzivatel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UzivatelCopyWith<Uzivatel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UzivatelCopyWith<$Res> {
  factory $UzivatelCopyWith(Uzivatel value, $Res Function(Uzivatel) then) =
      _$UzivatelCopyWithImpl<$Res, Uzivatel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uzivatelskeJmeno') String? uzivatelskeJmeno,
      @JsonKey(name: 'jmeno') String? jmeno,
      @JsonKey(name: 'prijmeni') String? prijmeni,
      @JsonKey(name: 'kategorie') String? kategorie,
      @JsonKey(name: 'ucetProPlatby') String? ucetProPlatby,
      @JsonKey(name: 'varSymbol') String? varSymbol,
      @JsonKey(name: 'specSymbol') String? specSymbol,
      @JsonKey(name: 'kredit') double kredit});
}

/// @nodoc
class _$UzivatelCopyWithImpl<$Res, $Val extends Uzivatel>
    implements $UzivatelCopyWith<$Res> {
  _$UzivatelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Uzivatel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uzivatelskeJmeno = freezed,
    Object? jmeno = freezed,
    Object? prijmeni = freezed,
    Object? kategorie = freezed,
    Object? ucetProPlatby = freezed,
    Object? varSymbol = freezed,
    Object? specSymbol = freezed,
    Object? kredit = null,
  }) {
    return _then(_value.copyWith(
      uzivatelskeJmeno: freezed == uzivatelskeJmeno
          ? _value.uzivatelskeJmeno
          : uzivatelskeJmeno // ignore: cast_nullable_to_non_nullable
              as String?,
      jmeno: freezed == jmeno
          ? _value.jmeno
          : jmeno // ignore: cast_nullable_to_non_nullable
              as String?,
      prijmeni: freezed == prijmeni
          ? _value.prijmeni
          : prijmeni // ignore: cast_nullable_to_non_nullable
              as String?,
      kategorie: freezed == kategorie
          ? _value.kategorie
          : kategorie // ignore: cast_nullable_to_non_nullable
              as String?,
      ucetProPlatby: freezed == ucetProPlatby
          ? _value.ucetProPlatby
          : ucetProPlatby // ignore: cast_nullable_to_non_nullable
              as String?,
      varSymbol: freezed == varSymbol
          ? _value.varSymbol
          : varSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      specSymbol: freezed == specSymbol
          ? _value.specSymbol
          : specSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      kredit: null == kredit
          ? _value.kredit
          : kredit // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UzivatelImplCopyWith<$Res>
    implements $UzivatelCopyWith<$Res> {
  factory _$$UzivatelImplCopyWith(
          _$UzivatelImpl value, $Res Function(_$UzivatelImpl) then) =
      __$$UzivatelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uzivatelskeJmeno') String? uzivatelskeJmeno,
      @JsonKey(name: 'jmeno') String? jmeno,
      @JsonKey(name: 'prijmeni') String? prijmeni,
      @JsonKey(name: 'kategorie') String? kategorie,
      @JsonKey(name: 'ucetProPlatby') String? ucetProPlatby,
      @JsonKey(name: 'varSymbol') String? varSymbol,
      @JsonKey(name: 'specSymbol') String? specSymbol,
      @JsonKey(name: 'kredit') double kredit});
}

/// @nodoc
class __$$UzivatelImplCopyWithImpl<$Res>
    extends _$UzivatelCopyWithImpl<$Res, _$UzivatelImpl>
    implements _$$UzivatelImplCopyWith<$Res> {
  __$$UzivatelImplCopyWithImpl(
      _$UzivatelImpl _value, $Res Function(_$UzivatelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Uzivatel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uzivatelskeJmeno = freezed,
    Object? jmeno = freezed,
    Object? prijmeni = freezed,
    Object? kategorie = freezed,
    Object? ucetProPlatby = freezed,
    Object? varSymbol = freezed,
    Object? specSymbol = freezed,
    Object? kredit = null,
  }) {
    return _then(_$UzivatelImpl(
      uzivatelskeJmeno: freezed == uzivatelskeJmeno
          ? _value.uzivatelskeJmeno
          : uzivatelskeJmeno // ignore: cast_nullable_to_non_nullable
              as String?,
      jmeno: freezed == jmeno
          ? _value.jmeno
          : jmeno // ignore: cast_nullable_to_non_nullable
              as String?,
      prijmeni: freezed == prijmeni
          ? _value.prijmeni
          : prijmeni // ignore: cast_nullable_to_non_nullable
              as String?,
      kategorie: freezed == kategorie
          ? _value.kategorie
          : kategorie // ignore: cast_nullable_to_non_nullable
              as String?,
      ucetProPlatby: freezed == ucetProPlatby
          ? _value.ucetProPlatby
          : ucetProPlatby // ignore: cast_nullable_to_non_nullable
              as String?,
      varSymbol: freezed == varSymbol
          ? _value.varSymbol
          : varSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      specSymbol: freezed == specSymbol
          ? _value.specSymbol
          : specSymbol // ignore: cast_nullable_to_non_nullable
              as String?,
      kredit: null == kredit
          ? _value.kredit
          : kredit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UzivatelImpl implements _Uzivatel {
  const _$UzivatelImpl(
      {@JsonKey(name: 'uzivatelskeJmeno') this.uzivatelskeJmeno,
      @JsonKey(name: 'jmeno') this.jmeno,
      @JsonKey(name: 'prijmeni') this.prijmeni,
      @JsonKey(name: 'kategorie') this.kategorie,
      @JsonKey(name: 'ucetProPlatby') this.ucetProPlatby,
      @JsonKey(name: 'varSymbol') this.varSymbol,
      @JsonKey(name: 'specSymbol') this.specSymbol,
      @JsonKey(name: 'kredit') this.kredit = 0});

  factory _$UzivatelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UzivatelImplFromJson(json);

  /// Uživatelské jméno
  @override
  @JsonKey(name: 'uzivatelskeJmeno')
  final String? uzivatelskeJmeno;

  /// Jméno, jak je uvedené v základních údajích o uživateli
  @override
  @JsonKey(name: 'jmeno')
  final String? jmeno;

  /// Příjmení, jak je uvedené v základních údajích o uživateli
  @override
  @JsonKey(name: 'prijmeni')
  final String? prijmeni;

  /// Kategorie uživatele
  @override
  @JsonKey(name: 'kategorie')
  final String? kategorie;

  /// Účet jídelny pro zasílání plateb
  @override
  @JsonKey(name: 'ucetProPlatby')
  final String? ucetProPlatby;

  /// Variabilní symbol
  @override
  @JsonKey(name: 'varSymbol')
  final String? varSymbol;

  /// Specifický symbol
  @override
  @JsonKey(name: 'specSymbol')
  final String? specSymbol;

  /// Aktuální stav kreditu
  @override
  @JsonKey(name: 'kredit')
  final double kredit;

  @override
  String toString() {
    return 'Uzivatel(uzivatelskeJmeno: $uzivatelskeJmeno, jmeno: $jmeno, prijmeni: $prijmeni, kategorie: $kategorie, ucetProPlatby: $ucetProPlatby, varSymbol: $varSymbol, specSymbol: $specSymbol, kredit: $kredit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UzivatelImpl &&
            (identical(other.uzivatelskeJmeno, uzivatelskeJmeno) ||
                other.uzivatelskeJmeno == uzivatelskeJmeno) &&
            (identical(other.jmeno, jmeno) || other.jmeno == jmeno) &&
            (identical(other.prijmeni, prijmeni) ||
                other.prijmeni == prijmeni) &&
            (identical(other.kategorie, kategorie) ||
                other.kategorie == kategorie) &&
            (identical(other.ucetProPlatby, ucetProPlatby) ||
                other.ucetProPlatby == ucetProPlatby) &&
            (identical(other.varSymbol, varSymbol) ||
                other.varSymbol == varSymbol) &&
            (identical(other.specSymbol, specSymbol) ||
                other.specSymbol == specSymbol) &&
            (identical(other.kredit, kredit) || other.kredit == kredit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uzivatelskeJmeno, jmeno,
      prijmeni, kategorie, ucetProPlatby, varSymbol, specSymbol, kredit);

  /// Create a copy of Uzivatel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UzivatelImplCopyWith<_$UzivatelImpl> get copyWith =>
      __$$UzivatelImplCopyWithImpl<_$UzivatelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UzivatelImplToJson(
      this,
    );
  }
}

abstract class _Uzivatel implements Uzivatel {
  const factory _Uzivatel(
      {@JsonKey(name: 'uzivatelskeJmeno') final String? uzivatelskeJmeno,
      @JsonKey(name: 'jmeno') final String? jmeno,
      @JsonKey(name: 'prijmeni') final String? prijmeni,
      @JsonKey(name: 'kategorie') final String? kategorie,
      @JsonKey(name: 'ucetProPlatby') final String? ucetProPlatby,
      @JsonKey(name: 'varSymbol') final String? varSymbol,
      @JsonKey(name: 'specSymbol') final String? specSymbol,
      @JsonKey(name: 'kredit') final double kredit}) = _$UzivatelImpl;

  factory _Uzivatel.fromJson(Map<String, dynamic> json) =
      _$UzivatelImpl.fromJson;

  /// Uživatelské jméno
  @override
  @JsonKey(name: 'uzivatelskeJmeno')
  String? get uzivatelskeJmeno;

  /// Jméno, jak je uvedené v základních údajích o uživateli
  @override
  @JsonKey(name: 'jmeno')
  String? get jmeno;

  /// Příjmení, jak je uvedené v základních údajích o uživateli
  @override
  @JsonKey(name: 'prijmeni')
  String? get prijmeni;

  /// Kategorie uživatele
  @override
  @JsonKey(name: 'kategorie')
  String? get kategorie;

  /// Účet jídelny pro zasílání plateb
  @override
  @JsonKey(name: 'ucetProPlatby')
  String? get ucetProPlatby;

  /// Variabilní symbol
  @override
  @JsonKey(name: 'varSymbol')
  String? get varSymbol;

  /// Specifický symbol
  @override
  @JsonKey(name: 'specSymbol')
  String? get specSymbol;

  /// Aktuální stav kreditu
  @override
  @JsonKey(name: 'kredit')
  double get kredit;

  /// Create a copy of Uzivatel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UzivatelImplCopyWith<_$UzivatelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
