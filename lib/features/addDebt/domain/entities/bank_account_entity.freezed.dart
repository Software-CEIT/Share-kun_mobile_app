// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BankAccountEntity {

 String get id; String get bank; String get accountNumber; String get holderName; String get maskedNumber;
/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BankAccountEntityCopyWith<BankAccountEntity> get copyWith => _$BankAccountEntityCopyWithImpl<BankAccountEntity>(this as BankAccountEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BankAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.holderName, holderName) || other.holderName == holderName)&&(identical(other.maskedNumber, maskedNumber) || other.maskedNumber == maskedNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,bank,accountNumber,holderName,maskedNumber);

@override
String toString() {
  return 'BankAccountEntity(id: $id, bank: $bank, accountNumber: $accountNumber, holderName: $holderName, maskedNumber: $maskedNumber)';
}


}

/// @nodoc
abstract mixin class $BankAccountEntityCopyWith<$Res>  {
  factory $BankAccountEntityCopyWith(BankAccountEntity value, $Res Function(BankAccountEntity) _then) = _$BankAccountEntityCopyWithImpl;
@useResult
$Res call({
 String id, String bank, String accountNumber, String holderName, String maskedNumber
});




}
/// @nodoc
class _$BankAccountEntityCopyWithImpl<$Res>
    implements $BankAccountEntityCopyWith<$Res> {
  _$BankAccountEntityCopyWithImpl(this._self, this._then);

  final BankAccountEntity _self;
  final $Res Function(BankAccountEntity) _then;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? bank = null,Object? accountNumber = null,Object? holderName = null,Object? maskedNumber = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,maskedNumber: null == maskedNumber ? _self.maskedNumber : maskedNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BankAccountEntity].
extension BankAccountEntityPatterns on BankAccountEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BankAccountEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BankAccountEntity value)  $default,){
final _that = this;
switch (_that) {
case _BankAccountEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BankAccountEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String bank,  String accountNumber,  String holderName,  String maskedNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that.id,_that.bank,_that.accountNumber,_that.holderName,_that.maskedNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String bank,  String accountNumber,  String holderName,  String maskedNumber)  $default,) {final _that = this;
switch (_that) {
case _BankAccountEntity():
return $default(_that.id,_that.bank,_that.accountNumber,_that.holderName,_that.maskedNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String bank,  String accountNumber,  String holderName,  String maskedNumber)?  $default,) {final _that = this;
switch (_that) {
case _BankAccountEntity() when $default != null:
return $default(_that.id,_that.bank,_that.accountNumber,_that.holderName,_that.maskedNumber);case _:
  return null;

}
}

}

/// @nodoc


class _BankAccountEntity implements BankAccountEntity {
  const _BankAccountEntity({required this.id, required this.bank, required this.accountNumber, required this.holderName, required this.maskedNumber});
  

@override final  String id;
@override final  String bank;
@override final  String accountNumber;
@override final  String holderName;
@override final  String maskedNumber;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BankAccountEntityCopyWith<_BankAccountEntity> get copyWith => __$BankAccountEntityCopyWithImpl<_BankAccountEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BankAccountEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.bank, bank) || other.bank == bank)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.holderName, holderName) || other.holderName == holderName)&&(identical(other.maskedNumber, maskedNumber) || other.maskedNumber == maskedNumber));
}


@override
int get hashCode => Object.hash(runtimeType,id,bank,accountNumber,holderName,maskedNumber);

@override
String toString() {
  return 'BankAccountEntity(id: $id, bank: $bank, accountNumber: $accountNumber, holderName: $holderName, maskedNumber: $maskedNumber)';
}


}

/// @nodoc
abstract mixin class _$BankAccountEntityCopyWith<$Res> implements $BankAccountEntityCopyWith<$Res> {
  factory _$BankAccountEntityCopyWith(_BankAccountEntity value, $Res Function(_BankAccountEntity) _then) = __$BankAccountEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String bank, String accountNumber, String holderName, String maskedNumber
});




}
/// @nodoc
class __$BankAccountEntityCopyWithImpl<$Res>
    implements _$BankAccountEntityCopyWith<$Res> {
  __$BankAccountEntityCopyWithImpl(this._self, this._then);

  final _BankAccountEntity _self;
  final $Res Function(_BankAccountEntity) _then;

/// Create a copy of BankAccountEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? bank = null,Object? accountNumber = null,Object? holderName = null,Object? maskedNumber = null,}) {
  return _then(_BankAccountEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,bank: null == bank ? _self.bank : bank // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,holderName: null == holderName ? _self.holderName : holderName // ignore: cast_nullable_to_non_nullable
as String,maskedNumber: null == maskedNumber ? _self.maskedNumber : maskedNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
