// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alergen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Alergen _$AlergenFromJson(Map<String, dynamic> json) {
  return _Alergen.fromJson(json);
}

/// @nodoc
mixin _$Alergen {
  @JsonKey(name: 'kod')
  int? get kod => throw _privateConstructorUsedError;
  @JsonKey(name: 'nazev')
  String get nazev => throw _privateConstructorUsedError;
  @JsonKey(name: 'popis')
  String? get popis => throw _privateConstructorUsedError;

  /// Serializes this Alergen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Alergen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AlergenCopyWith<Alergen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlergenCopyWith<$Res> {
  factory $AlergenCopyWith(Alergen value, $Res Function(Alergen) then) =
      _$AlergenCopyWithImpl<$Res, Alergen>;
  @useResult
  $Res call(
      {@JsonKey(name: 'kod') int? kod,
      @JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'popis') String? popis});
}

/// @nodoc
class _$AlergenCopyWithImpl<$Res, $Val extends Alergen>
    implements $AlergenCopyWith<$Res> {
  _$AlergenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alergen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kod = freezed,
    Object? nazev = null,
    Object? popis = freezed,
  }) {
    return _then(_value.copyWith(
      kod: freezed == kod
          ? _value.kod
          : kod // ignore: cast_nullable_to_non_nullable
              as int?,
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      popis: freezed == popis
          ? _value.popis
          : popis // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlergenImplCopyWith<$Res> implements $AlergenCopyWith<$Res> {
  factory _$$AlergenImplCopyWith(
          _$AlergenImpl value, $Res Function(_$AlergenImpl) then) =
      __$$AlergenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'kod') int? kod,
      @JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'popis') String? popis});
}

/// @nodoc
class __$$AlergenImplCopyWithImpl<$Res>
    extends _$AlergenCopyWithImpl<$Res, _$AlergenImpl>
    implements _$$AlergenImplCopyWith<$Res> {
  __$$AlergenImplCopyWithImpl(
      _$AlergenImpl _value, $Res Function(_$AlergenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Alergen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kod = freezed,
    Object? nazev = null,
    Object? popis = freezed,
  }) {
    return _then(_$AlergenImpl(
      kod: freezed == kod
          ? _value.kod
          : kod // ignore: cast_nullable_to_non_nullable
              as int?,
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      popis: freezed == popis
          ? _value.popis
          : popis // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlergenImpl implements _Alergen {
  const _$AlergenImpl(
      {@JsonKey(name: 'kod') this.kod,
      @JsonKey(name: 'nazev') required this.nazev,
      @JsonKey(name: 'popis') this.popis});

  factory _$AlergenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlergenImplFromJson(json);

  @override
  @JsonKey(name: 'kod')
  final int? kod;
  @override
  @JsonKey(name: 'nazev')
  final String nazev;
  @override
  @JsonKey(name: 'popis')
  final String? popis;

  @override
  String toString() {
    return 'Alergen(kod: $kod, nazev: $nazev, popis: $popis)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlergenImpl &&
            (identical(other.kod, kod) || other.kod == kod) &&
            (identical(other.nazev, nazev) || other.nazev == nazev) &&
            (identical(other.popis, popis) || other.popis == popis));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, kod, nazev, popis);

  /// Create a copy of Alergen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AlergenImplCopyWith<_$AlergenImpl> get copyWith =>
      __$$AlergenImplCopyWithImpl<_$AlergenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlergenImplToJson(
      this,
    );
  }
}

abstract class _Alergen implements Alergen {
  const factory _Alergen(
      {@JsonKey(name: 'kod') final int? kod,
      @JsonKey(name: 'nazev') required final String nazev,
      @JsonKey(name: 'popis') final String? popis}) = _$AlergenImpl;

  factory _Alergen.fromJson(Map<String, dynamic> json) = _$AlergenImpl.fromJson;

  @override
  @JsonKey(name: 'kod')
  int? get kod;
  @override
  @JsonKey(name: 'nazev')
  String get nazev;
  @override
  @JsonKey(name: 'popis')
  String? get popis;

  /// Create a copy of Alergen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AlergenImplCopyWith<_$AlergenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
