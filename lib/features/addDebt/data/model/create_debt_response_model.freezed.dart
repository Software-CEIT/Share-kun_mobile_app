// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_debt_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDebtResponseModel {

 List<DebtActivityModel> get debts;
/// Create a copy of CreateDebtResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDebtResponseModelCopyWith<CreateDebtResponseModel> get copyWith => _$CreateDebtResponseModelCopyWithImpl<CreateDebtResponseModel>(this as CreateDebtResponseModel, _$identity);

  /// Serializes this CreateDebtResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDebtResponseModel&&const DeepCollectionEquality().equals(other.debts, debts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(debts));

@override
String toString() {
  return 'CreateDebtResponseModel(debts: $debts)';
}


}

/// @nodoc
abstract mixin class $CreateDebtResponseModelCopyWith<$Res>  {
  factory $CreateDebtResponseModelCopyWith(CreateDebtResponseModel value, $Res Function(CreateDebtResponseModel) _then) = _$CreateDebtResponseModelCopyWithImpl;
@useResult
$Res call({
 List<DebtActivityModel> debts
});




}
/// @nodoc
class _$CreateDebtResponseModelCopyWithImpl<$Res>
    implements $CreateDebtResponseModelCopyWith<$Res> {
  _$CreateDebtResponseModelCopyWithImpl(this._self, this._then);

  final CreateDebtResponseModel _self;
  final $Res Function(CreateDebtResponseModel) _then;

/// Create a copy of CreateDebtResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? debts = null,}) {
  return _then(_self.copyWith(
debts: null == debts ? _self.debts : debts // ignore: cast_nullable_to_non_nullable
as List<DebtActivityModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDebtResponseModel].
extension CreateDebtResponseModelPatterns on CreateDebtResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDebtResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDebtResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDebtResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDebtResponseModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDebtResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDebtResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DebtActivityModel> debts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDebtResponseModel() when $default != null:
return $default(_that.debts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DebtActivityModel> debts)  $default,) {final _that = this;
switch (_that) {
case _CreateDebtResponseModel():
return $default(_that.debts);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DebtActivityModel> debts)?  $default,) {final _that = this;
switch (_that) {
case _CreateDebtResponseModel() when $default != null:
return $default(_that.debts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDebtResponseModel implements CreateDebtResponseModel {
  const _CreateDebtResponseModel({required final  List<DebtActivityModel> debts}): _debts = debts;
  factory _CreateDebtResponseModel.fromJson(Map<String, dynamic> json) => _$CreateDebtResponseModelFromJson(json);

 final  List<DebtActivityModel> _debts;
@override List<DebtActivityModel> get debts {
  if (_debts is EqualUnmodifiableListView) return _debts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_debts);
}


/// Create a copy of CreateDebtResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDebtResponseModelCopyWith<_CreateDebtResponseModel> get copyWith => __$CreateDebtResponseModelCopyWithImpl<_CreateDebtResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDebtResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDebtResponseModel&&const DeepCollectionEquality().equals(other._debts, _debts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_debts));

@override
String toString() {
  return 'CreateDebtResponseModel(debts: $debts)';
}


}

/// @nodoc
abstract mixin class _$CreateDebtResponseModelCopyWith<$Res> implements $CreateDebtResponseModelCopyWith<$Res> {
  factory _$CreateDebtResponseModelCopyWith(_CreateDebtResponseModel value, $Res Function(_CreateDebtResponseModel) _then) = __$CreateDebtResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<DebtActivityModel> debts
});




}
/// @nodoc
class __$CreateDebtResponseModelCopyWithImpl<$Res>
    implements _$CreateDebtResponseModelCopyWith<$Res> {
  __$CreateDebtResponseModelCopyWithImpl(this._self, this._then);

  final _CreateDebtResponseModel _self;
  final $Res Function(_CreateDebtResponseModel) _then;

/// Create a copy of CreateDebtResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? debts = null,}) {
  return _then(_CreateDebtResponseModel(
debts: null == debts ? _self._debts : debts // ignore: cast_nullable_to_non_nullable
as List<DebtActivityModel>,
  ));
}


}

// dart format on
