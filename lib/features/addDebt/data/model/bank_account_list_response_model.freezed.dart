// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_list_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BankAccountListResponseModel {

 List<BankAccountModel> get bankAccounts;
/// Create a copy of BankAccountListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountListResponseModelCopyWith<BankAccountListResponseModel> get copyWith => _$BankAccountListResponseModelCopyWithImpl<BankAccountListResponseModel>(this as BankAccountListResponseModel, _$identity);

  /// Serializes this BankAccountListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountListResponseModel&&const DeepCollectionEquality().equals(other.bankAccounts, bankAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(bankAccounts));

@override
String toString() {
  return 'BankAccountListResponseModel(bankAccounts: $bankAccounts)';
}


}

/// @nodoc
abstract mixin class $BankAccountListResponseModelCopyWith<$Res>  {
  factory $BankAccountListResponseModelCopyWith(BankAccountListResponseModel value, $Res Function(BankAccountListResponseModel) _then) = _$BankAccountListResponseModelCopyWithImpl;
@useResult
$Res call({
 List<BankAccountModel> bankAccounts
});




}
/// @nodoc
class _$BankAccountListResponseModelCopyWithImpl<$Res>
    implements $BankAccountListResponseModelCopyWith<$Res> {
  _$BankAccountListResponseModelCopyWithImpl(this._self, this._then);

  final BankAccountListResponseModel _self;
  final $Res Function(BankAccountListResponseModel) _then;

/// Create a copy of BankAccountListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? bankAccounts = null,}) {
  return _then(_self.copyWith(
bankAccounts: null == bankAccounts ? _self.bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountListResponseModel].
extension BankAccountListResponseModelPatterns on BankAccountListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<BankAccountModel> bankAccounts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountListResponseModel() when $default != null:
return $default(_that.bankAccounts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<BankAccountModel> bankAccounts)  $default,) {final _that = this;
switch (_that) {
case _BankAccountListResponseModel():
return $default(_that.bankAccounts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<BankAccountModel> bankAccounts)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountListResponseModel() when $default != null:
return $default(_that.bankAccounts);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BankAccountListResponseModel implements BankAccountListResponseModel {
  const _BankAccountListResponseModel({required final  List<BankAccountModel> bankAccounts}): _bankAccounts = bankAccounts;
  factory _BankAccountListResponseModel.fromJson(Map<String, dynamic> json) => _$BankAccountListResponseModelFromJson(json);

 final  List<BankAccountModel> _bankAccounts;
@override List<BankAccountModel> get bankAccounts {
  if (_bankAccounts is EqualUnmodifiableListView) return _bankAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bankAccounts);
}


/// Create a copy of BankAccountListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountListResponseModelCopyWith<_BankAccountListResponseModel> get copyWith => __$BankAccountListResponseModelCopyWithImpl<_BankAccountListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BankAccountListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountListResponseModel&&const DeepCollectionEquality().equals(other._bankAccounts, _bankAccounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_bankAccounts));

@override
String toString() {
  return 'BankAccountListResponseModel(bankAccounts: $bankAccounts)';
}


}

/// @nodoc
abstract mixin class _$BankAccountListResponseModelCopyWith<$Res> implements $BankAccountListResponseModelCopyWith<$Res> {
  factory _$BankAccountListResponseModelCopyWith(_BankAccountListResponseModel value, $Res Function(_BankAccountListResponseModel) _then) = __$BankAccountListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<BankAccountModel> bankAccounts
});




}
/// @nodoc
class __$BankAccountListResponseModelCopyWithImpl<$Res>
    implements _$BankAccountListResponseModelCopyWith<$Res> {
  __$BankAccountListResponseModelCopyWithImpl(this._self, this._then);

  final _BankAccountListResponseModel _self;
  final $Res Function(_BankAccountListResponseModel) _then;

/// Create a copy of BankAccountListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? bankAccounts = null,}) {
  return _then(_BankAccountListResponseModel(
bankAccounts: null == bankAccounts ? _self._bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountModel>,
  ));
}


}

// dart format on
