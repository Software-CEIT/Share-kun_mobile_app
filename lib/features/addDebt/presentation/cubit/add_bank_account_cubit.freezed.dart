// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_bank_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddBankAccountState {

 DataStatus get status; DataStatus get loadStatus; List<BankAccountEntity> get accounts; String? get errorMessage; String? get deletingId;
/// Create a copy of AddBankAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddBankAccountStateCopyWith<AddBankAccountState> get copyWith => _$AddBankAccountStateCopyWithImpl<AddBankAccountState>(this as AddBankAccountState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddBankAccountState&&(identical(other.status, status) || other.status == status)&&(identical(other.loadStatus, loadStatus) || other.loadStatus == loadStatus)&&const DeepCollectionEquality().equals(other.accounts, accounts)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.deletingId, deletingId) || other.deletingId == deletingId));
}


@override
int get hashCode => Object.hash(runtimeType,status,loadStatus,const DeepCollectionEquality().hash(accounts),errorMessage,deletingId);

@override
String toString() {
  return 'AddBankAccountState(status: $status, loadStatus: $loadStatus, accounts: $accounts, errorMessage: $errorMessage, deletingId: $deletingId)';
}


}

/// @nodoc
abstract mixin class $AddBankAccountStateCopyWith<$Res>  {
  factory $AddBankAccountStateCopyWith(AddBankAccountState value, $Res Function(AddBankAccountState) _then) = _$AddBankAccountStateCopyWithImpl;
@useResult
$Res call({
 DataStatus status, DataStatus loadStatus, List<BankAccountEntity> accounts, String? errorMessage, String? deletingId
});




}
/// @nodoc
class _$AddBankAccountStateCopyWithImpl<$Res>
    implements $AddBankAccountStateCopyWith<$Res> {
  _$AddBankAccountStateCopyWithImpl(this._self, this._then);

  final AddBankAccountState _self;
  final $Res Function(AddBankAccountState) _then;

/// Create a copy of AddBankAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? loadStatus = null,Object? accounts = null,Object? errorMessage = freezed,Object? deletingId = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,loadStatus: null == loadStatus ? _self.loadStatus : loadStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deletingId: freezed == deletingId ? _self.deletingId : deletingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddBankAccountState].
extension AddBankAccountStatePatterns on AddBankAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddBankAccountState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddBankAccountState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddBankAccountState value)  $default,){
final _that = this;
switch (_that) {
case _AddBankAccountState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddBankAccountState value)?  $default,){
final _that = this;
switch (_that) {
case _AddBankAccountState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataStatus status,  DataStatus loadStatus,  List<BankAccountEntity> accounts,  String? errorMessage,  String? deletingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddBankAccountState() when $default != null:
return $default(_that.status,_that.loadStatus,_that.accounts,_that.errorMessage,_that.deletingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataStatus status,  DataStatus loadStatus,  List<BankAccountEntity> accounts,  String? errorMessage,  String? deletingId)  $default,) {final _that = this;
switch (_that) {
case _AddBankAccountState():
return $default(_that.status,_that.loadStatus,_that.accounts,_that.errorMessage,_that.deletingId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataStatus status,  DataStatus loadStatus,  List<BankAccountEntity> accounts,  String? errorMessage,  String? deletingId)?  $default,) {final _that = this;
switch (_that) {
case _AddBankAccountState() when $default != null:
return $default(_that.status,_that.loadStatus,_that.accounts,_that.errorMessage,_that.deletingId);case _:
  return null;

}
}

}

/// @nodoc


class _AddBankAccountState implements AddBankAccountState {
  const _AddBankAccountState({this.status = DataStatus.initial, this.loadStatus = DataStatus.initial, final  List<BankAccountEntity> accounts = const [], this.errorMessage, this.deletingId}): _accounts = accounts;
  

@override@JsonKey() final  DataStatus status;
@override@JsonKey() final  DataStatus loadStatus;
 final  List<BankAccountEntity> _accounts;
@override@JsonKey() List<BankAccountEntity> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}

@override final  String? errorMessage;
@override final  String? deletingId;

/// Create a copy of AddBankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddBankAccountStateCopyWith<_AddBankAccountState> get copyWith => __$AddBankAccountStateCopyWithImpl<_AddBankAccountState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddBankAccountState&&(identical(other.status, status) || other.status == status)&&(identical(other.loadStatus, loadStatus) || other.loadStatus == loadStatus)&&const DeepCollectionEquality().equals(other._accounts, _accounts)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.deletingId, deletingId) || other.deletingId == deletingId));
}


@override
int get hashCode => Object.hash(runtimeType,status,loadStatus,const DeepCollectionEquality().hash(_accounts),errorMessage,deletingId);

@override
String toString() {
  return 'AddBankAccountState(status: $status, loadStatus: $loadStatus, accounts: $accounts, errorMessage: $errorMessage, deletingId: $deletingId)';
}


}

/// @nodoc
abstract mixin class _$AddBankAccountStateCopyWith<$Res> implements $AddBankAccountStateCopyWith<$Res> {
  factory _$AddBankAccountStateCopyWith(_AddBankAccountState value, $Res Function(_AddBankAccountState) _then) = __$AddBankAccountStateCopyWithImpl;
@override @useResult
$Res call({
 DataStatus status, DataStatus loadStatus, List<BankAccountEntity> accounts, String? errorMessage, String? deletingId
});




}
/// @nodoc
class __$AddBankAccountStateCopyWithImpl<$Res>
    implements _$AddBankAccountStateCopyWith<$Res> {
  __$AddBankAccountStateCopyWithImpl(this._self, this._then);

  final _AddBankAccountState _self;
  final $Res Function(_AddBankAccountState) _then;

/// Create a copy of AddBankAccountState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? loadStatus = null,Object? accounts = null,Object? errorMessage = freezed,Object? deletingId = freezed,}) {
  return _then(_AddBankAccountState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,loadStatus: null == loadStatus ? _self.loadStatus : loadStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountEntity>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,deletingId: freezed == deletingId ? _self.deletingId : deletingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
