// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../stav_uctu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StavUctu {

@JsonKey(name: 'kredit') double get kredit;/// Poslední datum, kdy je objednané jídlo
@JsonKey(name: 'objednano_do') DateTime? get objednanoDo;/// Momentálně vybraná výdejna (id + název)
@JsonKey(name: 'vydejna') (int, String)? get vydejna;/// Seznam výdejen
@JsonKey(name: 'vydejny') Map<int, String> get vydejny;
/// Create a copy of StavUctu
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StavUctuCopyWith<StavUctu> get copyWith => _$StavUctuCopyWithImpl<StavUctu>(this as StavUctu, _$identity);

  /// Serializes this StavUctu to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StavUctu&&(identical(other.kredit, kredit) || other.kredit == kredit)&&(identical(other.objednanoDo, objednanoDo) || other.objednanoDo == objednanoDo)&&(identical(other.vydejna, vydejna) || other.vydejna == vydejna)&&const DeepCollectionEquality().equals(other.vydejny, vydejny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kredit,objednanoDo,vydejna,const DeepCollectionEquality().hash(vydejny));

@override
String toString() {
  return 'StavUctu(kredit: $kredit, objednanoDo: $objednanoDo, vydejna: $vydejna, vydejny: $vydejny)';
}


}

/// @nodoc
abstract mixin class $StavUctuCopyWith<$Res>  {
  factory $StavUctuCopyWith(StavUctu value, $Res Function(StavUctu) _then) = _$StavUctuCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'kredit') double kredit,@JsonKey(name: 'objednano_do') DateTime? objednanoDo,@JsonKey(name: 'vydejna') (int, String)? vydejna,@JsonKey(name: 'vydejny') Map<int, String> vydejny
});




}
/// @nodoc
class _$StavUctuCopyWithImpl<$Res>
    implements $StavUctuCopyWith<$Res> {
  _$StavUctuCopyWithImpl(this._self, this._then);

  final StavUctu _self;
  final $Res Function(StavUctu) _then;

/// Create a copy of StavUctu
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kredit = null,Object? objednanoDo = freezed,Object? vydejna = freezed,Object? vydejny = null,}) {
  return _then(_self.copyWith(
kredit: null == kredit ? _self.kredit : kredit // ignore: cast_nullable_to_non_nullable
as double,objednanoDo: freezed == objednanoDo ? _self.objednanoDo : objednanoDo // ignore: cast_nullable_to_non_nullable
as DateTime?,vydejna: freezed == vydejna ? _self.vydejna : vydejna // ignore: cast_nullable_to_non_nullable
as (int, String)?,vydejny: null == vydejny ? _self.vydejny : vydejny // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [StavUctu].
extension StavUctuPatterns on StavUctu {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StavUctu value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StavUctu() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StavUctu value)  $default,){
final _that = this;
switch (_that) {
case _StavUctu():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StavUctu value)?  $default,){
final _that = this;
switch (_that) {
case _StavUctu() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'kredit')  double kredit, @JsonKey(name: 'objednano_do')  DateTime? objednanoDo, @JsonKey(name: 'vydejna')  (int, String)? vydejna, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StavUctu() when $default != null:
return $default(_that.kredit,_that.objednanoDo,_that.vydejna,_that.vydejny);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'kredit')  double kredit, @JsonKey(name: 'objednano_do')  DateTime? objednanoDo, @JsonKey(name: 'vydejna')  (int, String)? vydejna, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)  $default,) {final _that = this;
switch (_that) {
case _StavUctu():
return $default(_that.kredit,_that.objednanoDo,_that.vydejna,_that.vydejny);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'kredit')  double kredit, @JsonKey(name: 'objednano_do')  DateTime? objednanoDo, @JsonKey(name: 'vydejna')  (int, String)? vydejna, @JsonKey(name: 'vydejny')  Map<int, String> vydejny)?  $default,) {final _that = this;
switch (_that) {
case _StavUctu() when $default != null:
return $default(_that.kredit,_that.objednanoDo,_that.vydejna,_that.vydejny);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StavUctu implements StavUctu {
  const _StavUctu({@JsonKey(name: 'kredit') this.kredit = 0.0, @JsonKey(name: 'objednano_do') this.objednanoDo, @JsonKey(name: 'vydejna') this.vydejna, @JsonKey(name: 'vydejny') final  Map<int, String> vydejny = const <int, String>{}}): _vydejny = vydejny;
  factory _StavUctu.fromJson(Map<String, dynamic> json) => _$StavUctuFromJson(json);

@override@JsonKey(name: 'kredit') final  double kredit;
/// Poslední datum, kdy je objednané jídlo
@override@JsonKey(name: 'objednano_do') final  DateTime? objednanoDo;
/// Momentálně vybraná výdejna (id + název)
@override@JsonKey(name: 'vydejna') final  (int, String)? vydejna;
/// Seznam výdejen
 final  Map<int, String> _vydejny;
/// Seznam výdejen
@override@JsonKey(name: 'vydejny') Map<int, String> get vydejny {
  if (_vydejny is EqualUnmodifiableMapView) return _vydejny;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_vydejny);
}


/// Create a copy of StavUctu
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StavUctuCopyWith<_StavUctu> get copyWith => __$StavUctuCopyWithImpl<_StavUctu>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StavUctuToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StavUctu&&(identical(other.kredit, kredit) || other.kredit == kredit)&&(identical(other.objednanoDo, objednanoDo) || other.objednanoDo == objednanoDo)&&(identical(other.vydejna, vydejna) || other.vydejna == vydejna)&&const DeepCollectionEquality().equals(other._vydejny, _vydejny));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kredit,objednanoDo,vydejna,const DeepCollectionEquality().hash(_vydejny));

@override
String toString() {
  return 'StavUctu(kredit: $kredit, objednanoDo: $objednanoDo, vydejna: $vydejna, vydejny: $vydejny)';
}


}

/// @nodoc
abstract mixin class _$StavUctuCopyWith<$Res> implements $StavUctuCopyWith<$Res> {
  factory _$StavUctuCopyWith(_StavUctu value, $Res Function(_StavUctu) _then) = __$StavUctuCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'kredit') double kredit,@JsonKey(name: 'objednano_do') DateTime? objednanoDo,@JsonKey(name: 'vydejna') (int, String)? vydejna,@JsonKey(name: 'vydejny') Map<int, String> vydejny
});




}
/// @nodoc
class __$StavUctuCopyWithImpl<$Res>
    implements _$StavUctuCopyWith<$Res> {
  __$StavUctuCopyWithImpl(this._self, this._then);

  final _StavUctu _self;
  final $Res Function(_StavUctu) _then;

/// Create a copy of StavUctu
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kredit = null,Object? objednanoDo = freezed,Object? vydejna = freezed,Object? vydejny = null,}) {
  return _then(_StavUctu(
kredit: null == kredit ? _self.kredit : kredit // ignore: cast_nullable_to_non_nullable
as double,objednanoDo: freezed == objednanoDo ? _self.objednanoDo : objednanoDo // ignore: cast_nullable_to_non_nullable
as DateTime?,vydejna: freezed == vydejna ? _self.vydejna : vydejna // ignore: cast_nullable_to_non_nullable
as (int, String)?,vydejny: null == vydejny ? _self._vydejny : vydejny // ignore: cast_nullable_to_non_nullable
as Map<int, String>,
  ));
}


}

// dart format on
