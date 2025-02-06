// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jidelnicek.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Jidelnicek _$JidelnicekFromJson(Map<String, dynamic> json) {
  return _Jidelnicek.fromJson(json);
}

/// @nodoc
mixin _$Jidelnicek {
  /// Den, pro který je jídelníček zveřejněn
  @JsonKey(name: 'den')
  DateTime get den => throw _privateConstructorUsedError;

  /// Seznam jídel
  @JsonKey(name: 'jidla')
  List<Jidlo> get jidla =>
      throw _privateConstructorUsedError; // Seznam výdejen (je prázdný, pokud je pouze jedna)
  @JsonKey(name: 'vydejny')
  Map<int, String> get vydejny => throw _privateConstructorUsedError;

  /// Serializes this Jidelnicek to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Jidelnicek
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JidelnicekCopyWith<Jidelnicek> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JidelnicekCopyWith<$Res> {
  factory $JidelnicekCopyWith(
          Jidelnicek value, $Res Function(Jidelnicek) then) =
      _$JidelnicekCopyWithImpl<$Res, Jidelnicek>;
  @useResult
  $Res call(
      {@JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'jidla') List<Jidlo> jidla,
      @JsonKey(name: 'vydejny') Map<int, String> vydejny});
}

/// @nodoc
class _$JidelnicekCopyWithImpl<$Res, $Val extends Jidelnicek>
    implements $JidelnicekCopyWith<$Res> {
  _$JidelnicekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Jidelnicek
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? den = null,
    Object? jidla = null,
    Object? vydejny = null,
  }) {
    return _then(_value.copyWith(
      den: null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      jidla: null == jidla
          ? _value.jidla
          : jidla // ignore: cast_nullable_to_non_nullable
              as List<Jidlo>,
      vydejny: null == vydejny
          ? _value.vydejny
          : vydejny // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JidelnicekImplCopyWith<$Res>
    implements $JidelnicekCopyWith<$Res> {
  factory _$$JidelnicekImplCopyWith(
          _$JidelnicekImpl value, $Res Function(_$JidelnicekImpl) then) =
      __$$JidelnicekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'jidla') List<Jidlo> jidla,
      @JsonKey(name: 'vydejny') Map<int, String> vydejny});
}

/// @nodoc
class __$$JidelnicekImplCopyWithImpl<$Res>
    extends _$JidelnicekCopyWithImpl<$Res, _$JidelnicekImpl>
    implements _$$JidelnicekImplCopyWith<$Res> {
  __$$JidelnicekImplCopyWithImpl(
      _$JidelnicekImpl _value, $Res Function(_$JidelnicekImpl) _then)
      : super(_value, _then);

  /// Create a copy of Jidelnicek
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? den = null,
    Object? jidla = null,
    Object? vydejny = null,
  }) {
    return _then(_$JidelnicekImpl(
      null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      null == jidla
          ? _value._jidla
          : jidla // ignore: cast_nullable_to_non_nullable
              as List<Jidlo>,
      vydejny: null == vydejny
          ? _value._vydejny
          : vydejny // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JidelnicekImpl implements _Jidelnicek {
  const _$JidelnicekImpl(@JsonKey(name: 'den') this.den,
      @JsonKey(name: 'jidla') final List<Jidlo> jidla,
      {@JsonKey(name: 'vydejny') final Map<int, String> vydejny = const {}})
      : _jidla = jidla,
        _vydejny = vydejny;

  factory _$JidelnicekImpl.fromJson(Map<String, dynamic> json) =>
      _$$JidelnicekImplFromJson(json);

  /// Den, pro který je jídelníček zveřejněn
  @override
  @JsonKey(name: 'den')
  final DateTime den;

  /// Seznam jídel
  final List<Jidlo> _jidla;

  /// Seznam jídel
  @override
  @JsonKey(name: 'jidla')
  List<Jidlo> get jidla {
    if (_jidla is EqualUnmodifiableListView) return _jidla;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jidla);
  }

// Seznam výdejen (je prázdný, pokud je pouze jedna)
  final Map<int, String> _vydejny;
// Seznam výdejen (je prázdný, pokud je pouze jedna)
  @override
  @JsonKey(name: 'vydejny')
  Map<int, String> get vydejny {
    if (_vydejny is EqualUnmodifiableMapView) return _vydejny;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_vydejny);
  }

  @override
  String toString() {
    return 'Jidelnicek(den: $den, jidla: $jidla, vydejny: $vydejny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JidelnicekImpl &&
            (identical(other.den, den) || other.den == den) &&
            const DeepCollectionEquality().equals(other._jidla, _jidla) &&
            const DeepCollectionEquality().equals(other._vydejny, _vydejny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      den,
      const DeepCollectionEquality().hash(_jidla),
      const DeepCollectionEquality().hash(_vydejny));

  /// Create a copy of Jidelnicek
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JidelnicekImplCopyWith<_$JidelnicekImpl> get copyWith =>
      __$$JidelnicekImplCopyWithImpl<_$JidelnicekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JidelnicekImplToJson(
      this,
    );
  }
}

abstract class _Jidelnicek implements Jidelnicek {
  const factory _Jidelnicek(@JsonKey(name: 'den') final DateTime den,
          @JsonKey(name: 'jidla') final List<Jidlo> jidla,
          {@JsonKey(name: 'vydejny') final Map<int, String> vydejny}) =
      _$JidelnicekImpl;

  factory _Jidelnicek.fromJson(Map<String, dynamic> json) =
      _$JidelnicekImpl.fromJson;

  /// Den, pro který je jídelníček zveřejněn
  @override
  @JsonKey(name: 'den')
  DateTime get den;

  /// Seznam jídel
  @override
  @JsonKey(name: 'jidla')
  List<Jidlo> get jidla; // Seznam výdejen (je prázdný, pokud je pouze jedna)
  @override
  @JsonKey(name: 'vydejny')
  Map<int, String> get vydejny;

  /// Create a copy of Jidelnicek
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JidelnicekImplCopyWith<_$JidelnicekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
