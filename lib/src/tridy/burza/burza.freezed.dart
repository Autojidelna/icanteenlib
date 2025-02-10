// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'burza.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Burza _$BurzaFromJson(Map<String, dynamic> json) {
  return _Burza.fromJson(json);
}

/// @nodoc
mixin _$Burza {
  /// Den, který je jídlo vydáváno
  @JsonKey(name: 'den')
  DateTime get den => throw _privateConstructorUsedError;

  /// URL pro objednání
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  /// Název jídla
  @JsonKey(name: 'nazev')
  String get nazev => throw _privateConstructorUsedError;

  /// Počet kusů tohoto jídla dostupného na burze
  @JsonKey(name: 'pocet')
  int get pocet => throw _privateConstructorUsedError;

  /// Varianta
  @JsonKey(name: 'varianta')
  String? get varianta => throw _privateConstructorUsedError;

  /// Serializes this Burza to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Burza
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BurzaCopyWith<Burza> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BurzaCopyWith<$Res> {
  factory $BurzaCopyWith(Burza value, $Res Function(Burza) then) =
      _$BurzaCopyWithImpl<$Res, Burza>;
  @useResult
  $Res call(
      {@JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'pocet') int pocet,
      @JsonKey(name: 'varianta') String? varianta});
}

/// @nodoc
class _$BurzaCopyWithImpl<$Res, $Val extends Burza>
    implements $BurzaCopyWith<$Res> {
  _$BurzaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Burza
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? den = null,
    Object? url = freezed,
    Object? nazev = null,
    Object? pocet = null,
    Object? varianta = freezed,
  }) {
    return _then(_value.copyWith(
      den: null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      pocet: null == pocet
          ? _value.pocet
          : pocet // ignore: cast_nullable_to_non_nullable
              as int,
      varianta: freezed == varianta
          ? _value.varianta
          : varianta // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BurzaImplCopyWith<$Res> implements $BurzaCopyWith<$Res> {
  factory _$$BurzaImplCopyWith(
          _$BurzaImpl value, $Res Function(_$BurzaImpl) then) =
      __$$BurzaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'pocet') int pocet,
      @JsonKey(name: 'varianta') String? varianta});
}

/// @nodoc
class __$$BurzaImplCopyWithImpl<$Res>
    extends _$BurzaCopyWithImpl<$Res, _$BurzaImpl>
    implements _$$BurzaImplCopyWith<$Res> {
  __$$BurzaImplCopyWithImpl(
      _$BurzaImpl _value, $Res Function(_$BurzaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Burza
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? den = null,
    Object? url = freezed,
    Object? nazev = null,
    Object? pocet = null,
    Object? varianta = freezed,
  }) {
    return _then(_$BurzaImpl(
      den: null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      pocet: null == pocet
          ? _value.pocet
          : pocet // ignore: cast_nullable_to_non_nullable
              as int,
      varianta: freezed == varianta
          ? _value.varianta
          : varianta // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BurzaImpl implements _Burza {
  const _$BurzaImpl(
      {@JsonKey(name: 'den') required this.den,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'nazev') required this.nazev,
      @JsonKey(name: 'pocet') required this.pocet,
      @JsonKey(name: 'varianta') this.varianta});

  factory _$BurzaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BurzaImplFromJson(json);

  /// Den, který je jídlo vydáváno
  @override
  @JsonKey(name: 'den')
  final DateTime den;

  /// URL pro objednání
  @override
  @JsonKey(name: 'url')
  final String? url;

  /// Název jídla
  @override
  @JsonKey(name: 'nazev')
  final String nazev;

  /// Počet kusů tohoto jídla dostupného na burze
  @override
  @JsonKey(name: 'pocet')
  final int pocet;

  /// Varianta
  @override
  @JsonKey(name: 'varianta')
  final String? varianta;

  @override
  String toString() {
    return 'Burza(den: $den, url: $url, nazev: $nazev, pocet: $pocet, varianta: $varianta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BurzaImpl &&
            (identical(other.den, den) || other.den == den) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.nazev, nazev) || other.nazev == nazev) &&
            (identical(other.pocet, pocet) || other.pocet == pocet) &&
            (identical(other.varianta, varianta) ||
                other.varianta == varianta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, den, url, nazev, pocet, varianta);

  /// Create a copy of Burza
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BurzaImplCopyWith<_$BurzaImpl> get copyWith =>
      __$$BurzaImplCopyWithImpl<_$BurzaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BurzaImplToJson(
      this,
    );
  }
}

abstract class _Burza implements Burza {
  const factory _Burza(
      {@JsonKey(name: 'den') required final DateTime den,
      @JsonKey(name: 'url') required final String? url,
      @JsonKey(name: 'nazev') required final String nazev,
      @JsonKey(name: 'pocet') required final int pocet,
      @JsonKey(name: 'varianta') final String? varianta}) = _$BurzaImpl;

  factory _Burza.fromJson(Map<String, dynamic> json) = _$BurzaImpl.fromJson;

  /// Den, který je jídlo vydáváno
  @override
  @JsonKey(name: 'den')
  DateTime get den;

  /// URL pro objednání
  @override
  @JsonKey(name: 'url')
  String? get url;

  /// Název jídla
  @override
  @JsonKey(name: 'nazev')
  String get nazev;

  /// Počet kusů tohoto jídla dostupného na burze
  @override
  @JsonKey(name: 'pocet')
  int get pocet;

  /// Varianta
  @override
  @JsonKey(name: 'varianta')
  String? get varianta;

  /// Create a copy of Burza
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BurzaImplCopyWith<_$BurzaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
