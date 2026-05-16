// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_debt_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddDebtState {

 List<ContactItemEntities> get contacts; List<ContactItemEntities> get selectedContacts; List<BankAccountEntity> get bankAccounts; String? get selectedBankAccountId; DebtDirection get direction; String get amountDisplay; double get amount; String get note; DataStatus get status; bool get hasBankAccount; String? get errorMessage;
/// Create a copy of AddDebtState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddDebtStateCopyWith<AddDebtState> get copyWith => _$AddDebtStateCopyWithImpl<AddDebtState>(this as AddDebtState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddDebtState&&const DeepCollectionEquality().equals(other.contacts, contacts)&&const DeepCollectionEquality().equals(other.selectedContacts, selectedContacts)&&const DeepCollectionEquality().equals(other.bankAccounts, bankAccounts)&&(identical(other.selectedBankAccountId, selectedBankAccountId) || other.selectedBankAccountId == selectedBankAccountId)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.amountDisplay, amountDisplay) || other.amountDisplay == amountDisplay)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasBankAccount, hasBankAccount) || other.hasBankAccount == hasBankAccount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contacts),const DeepCollectionEquality().hash(selectedContacts),const DeepCollectionEquality().hash(bankAccounts),selectedBankAccountId,direction,amountDisplay,amount,note,status,hasBankAccount,errorMessage);

@override
String toString() {
  return 'AddDebtState(contacts: $contacts, selectedContacts: $selectedContacts, bankAccounts: $bankAccounts, selectedBankAccountId: $selectedBankAccountId, direction: $direction, amountDisplay: $amountDisplay, amount: $amount, note: $note, status: $status, hasBankAccount: $hasBankAccount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AddDebtStateCopyWith<$Res>  {
  factory $AddDebtStateCopyWith(AddDebtState value, $Res Function(AddDebtState) _then) = _$AddDebtStateCopyWithImpl;
@useResult
$Res call({
 List<ContactItemEntities> contacts, List<ContactItemEntities> selectedContacts, List<BankAccountEntity> bankAccounts, String? selectedBankAccountId, DebtDirection direction, String amountDisplay, double amount, String note, DataStatus status, bool hasBankAccount, String? errorMessage
});




}
/// @nodoc
class _$AddDebtStateCopyWithImpl<$Res>
    implements $AddDebtStateCopyWith<$Res> {
  _$AddDebtStateCopyWithImpl(this._self, this._then);

  final AddDebtState _self;
  final $Res Function(AddDebtState) _then;

/// Create a copy of AddDebtState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contacts = null,Object? selectedContacts = null,Object? bankAccounts = null,Object? selectedBankAccountId = freezed,Object? direction = null,Object? amountDisplay = null,Object? amount = null,Object? note = null,Object? status = null,Object? hasBankAccount = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
contacts: null == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<ContactItemEntities>,selectedContacts: null == selectedContacts ? _self.selectedContacts : selectedContacts // ignore: cast_nullable_to_non_nullable
as List<ContactItemEntities>,bankAccounts: null == bankAccounts ? _self.bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountEntity>,selectedBankAccountId: freezed == selectedBankAccountId ? _self.selectedBankAccountId : selectedBankAccountId // ignore: cast_nullable_to_non_nullable
as String?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as DebtDirection,amountDisplay: null == amountDisplay ? _self.amountDisplay : amountDisplay // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,hasBankAccount: null == hasBankAccount ? _self.hasBankAccount : hasBankAccount // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AddDebtState].
extension AddDebtStatePatterns on AddDebtState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddDebtState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddDebtState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddDebtState value)  $default,){
final _that = this;
switch (_that) {
case _AddDebtState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddDebtState value)?  $default,){
final _that = this;
switch (_that) {
case _AddDebtState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ContactItemEntities> contacts,  List<ContactItemEntities> selectedContacts,  List<BankAccountEntity> bankAccounts,  String? selectedBankAccountId,  DebtDirection direction,  String amountDisplay,  double amount,  String note,  DataStatus status,  bool hasBankAccount,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddDebtState() when $default != null:
return $default(_that.contacts,_that.selectedContacts,_that.bankAccounts,_that.selectedBankAccountId,_that.direction,_that.amountDisplay,_that.amount,_that.note,_that.status,_that.hasBankAccount,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ContactItemEntities> contacts,  List<ContactItemEntities> selectedContacts,  List<BankAccountEntity> bankAccounts,  String? selectedBankAccountId,  DebtDirection direction,  String amountDisplay,  double amount,  String note,  DataStatus status,  bool hasBankAccount,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AddDebtState():
return $default(_that.contacts,_that.selectedContacts,_that.bankAccounts,_that.selectedBankAccountId,_that.direction,_that.amountDisplay,_that.amount,_that.note,_that.status,_that.hasBankAccount,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ContactItemEntities> contacts,  List<ContactItemEntities> selectedContacts,  List<BankAccountEntity> bankAccounts,  String? selectedBankAccountId,  DebtDirection direction,  String amountDisplay,  double amount,  String note,  DataStatus status,  bool hasBankAccount,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AddDebtState() when $default != null:
return $default(_that.contacts,_that.selectedContacts,_that.bankAccounts,_that.selectedBankAccountId,_that.direction,_that.amountDisplay,_that.amount,_that.note,_that.status,_that.hasBankAccount,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddDebtState implements AddDebtState {
  const _AddDebtState({final  List<ContactItemEntities> contacts = const [], final  List<ContactItemEntities> selectedContacts = const [], final  List<BankAccountEntity> bankAccounts = const [], this.selectedBankAccountId, this.direction = DebtDirection.owesMe, this.amountDisplay = '', this.amount = 0.0, this.note = '', this.status = DataStatus.initial, this.hasBankAccount = false, this.errorMessage}): _contacts = contacts,_selectedContacts = selectedContacts,_bankAccounts = bankAccounts;
  

 final  List<ContactItemEntities> _contacts;
@override@JsonKey() List<ContactItemEntities> get contacts {
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contacts);
}

 final  List<ContactItemEntities> _selectedContacts;
@override@JsonKey() List<ContactItemEntities> get selectedContacts {
  if (_selectedContacts is EqualUnmodifiableListView) return _selectedContacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedContacts);
}

 final  List<BankAccountEntity> _bankAccounts;
@override@JsonKey() List<BankAccountEntity> get bankAccounts {
  if (_bankAccounts is EqualUnmodifiableListView) return _bankAccounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bankAccounts);
}

@override final  String? selectedBankAccountId;
@override@JsonKey() final  DebtDirection direction;
@override@JsonKey() final  String amountDisplay;
@override@JsonKey() final  double amount;
@override@JsonKey() final  String note;
@override@JsonKey() final  DataStatus status;
@override@JsonKey() final  bool hasBankAccount;
@override final  String? errorMessage;

/// Create a copy of AddDebtState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddDebtStateCopyWith<_AddDebtState> get copyWith => __$AddDebtStateCopyWithImpl<_AddDebtState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddDebtState&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&const DeepCollectionEquality().equals(other._selectedContacts, _selectedContacts)&&const DeepCollectionEquality().equals(other._bankAccounts, _bankAccounts)&&(identical(other.selectedBankAccountId, selectedBankAccountId) || other.selectedBankAccountId == selectedBankAccountId)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.amountDisplay, amountDisplay) || other.amountDisplay == amountDisplay)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.hasBankAccount, hasBankAccount) || other.hasBankAccount == hasBankAccount)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contacts),const DeepCollectionEquality().hash(_selectedContacts),const DeepCollectionEquality().hash(_bankAccounts),selectedBankAccountId,direction,amountDisplay,amount,note,status,hasBankAccount,errorMessage);

@override
String toString() {
  return 'AddDebtState(contacts: $contacts, selectedContacts: $selectedContacts, bankAccounts: $bankAccounts, selectedBankAccountId: $selectedBankAccountId, direction: $direction, amountDisplay: $amountDisplay, amount: $amount, note: $note, status: $status, hasBankAccount: $hasBankAccount, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AddDebtStateCopyWith<$Res> implements $AddDebtStateCopyWith<$Res> {
  factory _$AddDebtStateCopyWith(_AddDebtState value, $Res Function(_AddDebtState) _then) = __$AddDebtStateCopyWithImpl;
@override @useResult
$Res call({
 List<ContactItemEntities> contacts, List<ContactItemEntities> selectedContacts, List<BankAccountEntity> bankAccounts, String? selectedBankAccountId, DebtDirection direction, String amountDisplay, double amount, String note, DataStatus status, bool hasBankAccount, String? errorMessage
});




}
/// @nodoc
class __$AddDebtStateCopyWithImpl<$Res>
    implements _$AddDebtStateCopyWith<$Res> {
  __$AddDebtStateCopyWithImpl(this._self, this._then);

  final _AddDebtState _self;
  final $Res Function(_AddDebtState) _then;

/// Create a copy of AddDebtState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contacts = null,Object? selectedContacts = null,Object? bankAccounts = null,Object? selectedBankAccountId = freezed,Object? direction = null,Object? amountDisplay = null,Object? amount = null,Object? note = null,Object? status = null,Object? hasBankAccount = null,Object? errorMessage = freezed,}) {
  return _then(_AddDebtState(
contacts: null == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<ContactItemEntities>,selectedContacts: null == selectedContacts ? _self._selectedContacts : selectedContacts // ignore: cast_nullable_to_non_nullable
as List<ContactItemEntities>,bankAccounts: null == bankAccounts ? _self._bankAccounts : bankAccounts // ignore: cast_nullable_to_non_nullable
as List<BankAccountEntity>,selectedBankAccountId: freezed == selectedBankAccountId ? _self.selectedBankAccountId : selectedBankAccountId // ignore: cast_nullable_to_non_nullable
as String?,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as DebtDirection,amountDisplay: null == amountDisplay ? _self.amountDisplay : amountDisplay // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,hasBankAccount: null == hasBankAccount ? _self.hasBankAccount : hasBankAccount // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
