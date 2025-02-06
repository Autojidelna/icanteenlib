// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jidlo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Jidlo _$JidloFromJson(Map<String, dynamic> json) {
  return _Jidlo.fromJson(json);
}

/// @nodoc
mixin _$Jidlo {
  /// Název jídla
  @JsonKey(name: 'nazev')
  String get nazev => throw _privateConstructorUsedError;

  /// Kategorizované jídlo
  @JsonKey(name: 'kategorizovano')
  JidloKategorizovano? get kategorizovano => throw _privateConstructorUsedError;

  /// Objednal si uživatel toto jídlo?
  @JsonKey(name: 'objednano')
  bool get objednano => throw _privateConstructorUsedError;

  /// Název varianty
  @JsonKey(name: 'varianta')
  String get varianta => throw _privateConstructorUsedError;

  /// Cena
  @JsonKey(name: 'cena')
  double? get cena => throw _privateConstructorUsedError;

  ///Lze objednat?
  @JsonKey(name: 'lzeObjednat')
  bool get lzeObjednat => throw _privateConstructorUsedError;

  /// Je jídlo aktuálně na burze?
  @JsonKey(name: 'naBurze')
  bool get naBurze => throw _privateConstructorUsedError;

  /// Den, který je jídlo vydáváno
  @JsonKey(name: 'den')
  DateTime get den => throw _privateConstructorUsedError;

  /// Seznam alergenů
  ///
  /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
  @JsonKey(name: 'alergeny')
  List<Alergen> get alergeny => throw _privateConstructorUsedError;

  /// URL pro požadavek na objednání jídla
  @JsonKey(name: 'orderUrl')
  String? get orderUrl => throw _privateConstructorUsedError;

  /// URL pro vložení jídla na burzu
  @JsonKey(name: 'burzaUrl')
  String? get burzaUrl => throw _privateConstructorUsedError;

  /// Serializes this Jidlo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JidloCopyWith<Jidlo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JidloCopyWith<$Res> {
  factory $JidloCopyWith(Jidlo value, $Res Function(Jidlo) then) =
      _$JidloCopyWithImpl<$Res, Jidlo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'kategorizovano') JidloKategorizovano? kategorizovano,
      @JsonKey(name: 'objednano') bool objednano,
      @JsonKey(name: 'varianta') String varianta,
      @JsonKey(name: 'cena') double? cena,
      @JsonKey(name: 'lzeObjednat') bool lzeObjednat,
      @JsonKey(name: 'naBurze') bool naBurze,
      @JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'alergeny') List<Alergen> alergeny,
      @JsonKey(name: 'orderUrl') String? orderUrl,
      @JsonKey(name: 'burzaUrl') String? burzaUrl});

  $JidloKategorizovanoCopyWith<$Res>? get kategorizovano;
}

/// @nodoc
class _$JidloCopyWithImpl<$Res, $Val extends Jidlo>
    implements $JidloCopyWith<$Res> {
  _$JidloCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nazev = null,
    Object? kategorizovano = freezed,
    Object? objednano = null,
    Object? varianta = null,
    Object? cena = freezed,
    Object? lzeObjednat = null,
    Object? naBurze = null,
    Object? den = null,
    Object? alergeny = null,
    Object? orderUrl = freezed,
    Object? burzaUrl = freezed,
  }) {
    return _then(_value.copyWith(
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      kategorizovano: freezed == kategorizovano
          ? _value.kategorizovano
          : kategorizovano // ignore: cast_nullable_to_non_nullable
              as JidloKategorizovano?,
      objednano: null == objednano
          ? _value.objednano
          : objednano // ignore: cast_nullable_to_non_nullable
              as bool,
      varianta: null == varianta
          ? _value.varianta
          : varianta // ignore: cast_nullable_to_non_nullable
              as String,
      cena: freezed == cena
          ? _value.cena
          : cena // ignore: cast_nullable_to_non_nullable
              as double?,
      lzeObjednat: null == lzeObjednat
          ? _value.lzeObjednat
          : lzeObjednat // ignore: cast_nullable_to_non_nullable
              as bool,
      naBurze: null == naBurze
          ? _value.naBurze
          : naBurze // ignore: cast_nullable_to_non_nullable
              as bool,
      den: null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alergeny: null == alergeny
          ? _value.alergeny
          : alergeny // ignore: cast_nullable_to_non_nullable
              as List<Alergen>,
      orderUrl: freezed == orderUrl
          ? _value.orderUrl
          : orderUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      burzaUrl: freezed == burzaUrl
          ? _value.burzaUrl
          : burzaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JidloKategorizovanoCopyWith<$Res>? get kategorizovano {
    if (_value.kategorizovano == null) {
      return null;
    }

    return $JidloKategorizovanoCopyWith<$Res>(_value.kategorizovano!, (value) {
      return _then(_value.copyWith(kategorizovano: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JidloImplCopyWith<$Res> implements $JidloCopyWith<$Res> {
  factory _$$JidloImplCopyWith(
          _$JidloImpl value, $Res Function(_$JidloImpl) then) =
      __$$JidloImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nazev') String nazev,
      @JsonKey(name: 'kategorizovano') JidloKategorizovano? kategorizovano,
      @JsonKey(name: 'objednano') bool objednano,
      @JsonKey(name: 'varianta') String varianta,
      @JsonKey(name: 'cena') double? cena,
      @JsonKey(name: 'lzeObjednat') bool lzeObjednat,
      @JsonKey(name: 'naBurze') bool naBurze,
      @JsonKey(name: 'den') DateTime den,
      @JsonKey(name: 'alergeny') List<Alergen> alergeny,
      @JsonKey(name: 'orderUrl') String? orderUrl,
      @JsonKey(name: 'burzaUrl') String? burzaUrl});

  @override
  $JidloKategorizovanoCopyWith<$Res>? get kategorizovano;
}

/// @nodoc
class __$$JidloImplCopyWithImpl<$Res>
    extends _$JidloCopyWithImpl<$Res, _$JidloImpl>
    implements _$$JidloImplCopyWith<$Res> {
  __$$JidloImplCopyWithImpl(
      _$JidloImpl _value, $Res Function(_$JidloImpl) _then)
      : super(_value, _then);

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nazev = null,
    Object? kategorizovano = freezed,
    Object? objednano = null,
    Object? varianta = null,
    Object? cena = freezed,
    Object? lzeObjednat = null,
    Object? naBurze = null,
    Object? den = null,
    Object? alergeny = null,
    Object? orderUrl = freezed,
    Object? burzaUrl = freezed,
  }) {
    return _then(_$JidloImpl(
      nazev: null == nazev
          ? _value.nazev
          : nazev // ignore: cast_nullable_to_non_nullable
              as String,
      kategorizovano: freezed == kategorizovano
          ? _value.kategorizovano
          : kategorizovano // ignore: cast_nullable_to_non_nullable
              as JidloKategorizovano?,
      objednano: null == objednano
          ? _value.objednano
          : objednano // ignore: cast_nullable_to_non_nullable
              as bool,
      varianta: null == varianta
          ? _value.varianta
          : varianta // ignore: cast_nullable_to_non_nullable
              as String,
      cena: freezed == cena
          ? _value.cena
          : cena // ignore: cast_nullable_to_non_nullable
              as double?,
      lzeObjednat: null == lzeObjednat
          ? _value.lzeObjednat
          : lzeObjednat // ignore: cast_nullable_to_non_nullable
              as bool,
      naBurze: null == naBurze
          ? _value.naBurze
          : naBurze // ignore: cast_nullable_to_non_nullable
              as bool,
      den: null == den
          ? _value.den
          : den // ignore: cast_nullable_to_non_nullable
              as DateTime,
      alergeny: null == alergeny
          ? _value._alergeny
          : alergeny // ignore: cast_nullable_to_non_nullable
              as List<Alergen>,
      orderUrl: freezed == orderUrl
          ? _value.orderUrl
          : orderUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      burzaUrl: freezed == burzaUrl
          ? _value.burzaUrl
          : burzaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JidloImpl implements _Jidlo {
  const _$JidloImpl(
      {@JsonKey(name: 'nazev') required this.nazev,
      @JsonKey(name: 'kategorizovano') this.kategorizovano,
      @JsonKey(name: 'objednano') required this.objednano,
      @JsonKey(name: 'varianta') required this.varianta,
      @JsonKey(name: 'cena') this.cena,
      @JsonKey(name: 'lzeObjednat') required this.lzeObjednat,
      @JsonKey(name: 'naBurze') required this.naBurze,
      @JsonKey(name: 'den') required this.den,
      @JsonKey(name: 'alergeny') final List<Alergen> alergeny = const [],
      @JsonKey(name: 'orderUrl') this.orderUrl,
      @JsonKey(name: 'burzaUrl') this.burzaUrl})
      : _alergeny = alergeny;

  factory _$JidloImpl.fromJson(Map<String, dynamic> json) =>
      _$$JidloImplFromJson(json);

  /// Název jídla
  @override
  @JsonKey(name: 'nazev')
  final String nazev;

  /// Kategorizované jídlo
  @override
  @JsonKey(name: 'kategorizovano')
  final JidloKategorizovano? kategorizovano;

  /// Objednal si uživatel toto jídlo?
  @override
  @JsonKey(name: 'objednano')
  final bool objednano;

  /// Název varianty
  @override
  @JsonKey(name: 'varianta')
  final String varianta;

  /// Cena
  @override
  @JsonKey(name: 'cena')
  final double? cena;

  ///Lze objednat?
  @override
  @JsonKey(name: 'lzeObjednat')
  final bool lzeObjednat;

  /// Je jídlo aktuálně na burze?
  @override
  @JsonKey(name: 'naBurze')
  final bool naBurze;

  /// Den, který je jídlo vydáváno
  @override
  @JsonKey(name: 'den')
  final DateTime den;

  /// Seznam alergenů
  ///
  /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
  final List<Alergen> _alergeny;

  /// Seznam alergenů
  ///
  /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
  @override
  @JsonKey(name: 'alergeny')
  List<Alergen> get alergeny {
    if (_alergeny is EqualUnmodifiableListView) return _alergeny;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alergeny);
  }

  /// URL pro požadavek na objednání jídla
  @override
  @JsonKey(name: 'orderUrl')
  final String? orderUrl;

  /// URL pro vložení jídla na burzu
  @override
  @JsonKey(name: 'burzaUrl')
  final String? burzaUrl;

  @override
  String toString() {
    return 'Jidlo(nazev: $nazev, kategorizovano: $kategorizovano, objednano: $objednano, varianta: $varianta, cena: $cena, lzeObjednat: $lzeObjednat, naBurze: $naBurze, den: $den, alergeny: $alergeny, orderUrl: $orderUrl, burzaUrl: $burzaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JidloImpl &&
            (identical(other.nazev, nazev) || other.nazev == nazev) &&
            (identical(other.kategorizovano, kategorizovano) ||
                other.kategorizovano == kategorizovano) &&
            (identical(other.objednano, objednano) ||
                other.objednano == objednano) &&
            (identical(other.varianta, varianta) ||
                other.varianta == varianta) &&
            (identical(other.cena, cena) || other.cena == cena) &&
            (identical(other.lzeObjednat, lzeObjednat) ||
                other.lzeObjednat == lzeObjednat) &&
            (identical(other.naBurze, naBurze) || other.naBurze == naBurze) &&
            (identical(other.den, den) || other.den == den) &&
            const DeepCollectionEquality().equals(other._alergeny, _alergeny) &&
            (identical(other.orderUrl, orderUrl) ||
                other.orderUrl == orderUrl) &&
            (identical(other.burzaUrl, burzaUrl) ||
                other.burzaUrl == burzaUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nazev,
      kategorizovano,
      objednano,
      varianta,
      cena,
      lzeObjednat,
      naBurze,
      den,
      const DeepCollectionEquality().hash(_alergeny),
      orderUrl,
      burzaUrl);

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JidloImplCopyWith<_$JidloImpl> get copyWith =>
      __$$JidloImplCopyWithImpl<_$JidloImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JidloImplToJson(
      this,
    );
  }
}

abstract class _Jidlo implements Jidlo {
  const factory _Jidlo(
      {@JsonKey(name: 'nazev') required final String nazev,
      @JsonKey(name: 'kategorizovano')
      final JidloKategorizovano? kategorizovano,
      @JsonKey(name: 'objednano') required final bool objednano,
      @JsonKey(name: 'varianta') required final String varianta,
      @JsonKey(name: 'cena') final double? cena,
      @JsonKey(name: 'lzeObjednat') required final bool lzeObjednat,
      @JsonKey(name: 'naBurze') required final bool naBurze,
      @JsonKey(name: 'den') required final DateTime den,
      @JsonKey(name: 'alergeny') final List<Alergen> alergeny,
      @JsonKey(name: 'orderUrl') final String? orderUrl,
      @JsonKey(name: 'burzaUrl') final String? burzaUrl}) = _$JidloImpl;

  factory _Jidlo.fromJson(Map<String, dynamic> json) = _$JidloImpl.fromJson;

  /// Název jídla
  @override
  @JsonKey(name: 'nazev')
  String get nazev;

  /// Kategorizované jídlo
  @override
  @JsonKey(name: 'kategorizovano')
  JidloKategorizovano? get kategorizovano;

  /// Objednal si uživatel toto jídlo?
  @override
  @JsonKey(name: 'objednano')
  bool get objednano;

  /// Název varianty
  @override
  @JsonKey(name: 'varianta')
  String get varianta;

  /// Cena
  @override
  @JsonKey(name: 'cena')
  double? get cena;

  ///Lze objednat?
  @override
  @JsonKey(name: 'lzeObjednat')
  bool get lzeObjednat;

  /// Je jídlo aktuálně na burze?
  @override
  @JsonKey(name: 'naBurze')
  bool get naBurze;

  /// Den, který je jídlo vydáváno
  @override
  @JsonKey(name: 'den')
  DateTime get den;

  /// Seznam alergenů
  ///
  /// Pokud se žádný nepodařilo najít, vrací prázdný seznam
  @override
  @JsonKey(name: 'alergeny')
  List<Alergen> get alergeny;

  /// URL pro požadavek na objednání jídla
  @override
  @JsonKey(name: 'orderUrl')
  String? get orderUrl;

  /// URL pro vložení jídla na burzu
  @override
  @JsonKey(name: 'burzaUrl')
  String? get burzaUrl;

  /// Create a copy of Jidlo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JidloImplCopyWith<_$JidloImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
