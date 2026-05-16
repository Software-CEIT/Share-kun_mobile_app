// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FriendEntity {

 String get id; String get name; String get note; double get amount; FriendDebtType get debtType;
/// Create a copy of FriendEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendEntityCopyWith<FriendEntity> get copyWith => _$FriendEntityCopyWithImpl<FriendEntity>(this as FriendEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.note, note) || other.note == note)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.debtType, debtType) || other.debtType == debtType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,note,amount,debtType);

@override
String toString() {
  return 'FriendEntity(id: $id, name: $name, note: $note, amount: $amount, debtType: $debtType)';
}


}

/// @nodoc
abstract mixin class $FriendEntityCopyWith<$Res>  {
  factory $FriendEntityCopyWith(FriendEntity value, $Res Function(FriendEntity) _then) = _$FriendEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String note, double amount, FriendDebtType debtType
});




}
/// @nodoc
class _$FriendEntityCopyWithImpl<$Res>
    implements $FriendEntityCopyWith<$Res> {
  _$FriendEntityCopyWithImpl(this._self, this._then);

  final FriendEntity _self;
  final $Res Function(FriendEntity) _then;

/// Create a copy of FriendEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? note = null,Object? amount = null,Object? debtType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,debtType: null == debtType ? _self.debtType : debtType // ignore: cast_nullable_to_non_nullable
as FriendDebtType,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendEntity].
extension FriendEntityPatterns on FriendEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendEntity value)  $default,){
final _that = this;
switch (_that) {
case _FriendEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FriendEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String note,  double amount,  FriendDebtType debtType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendEntity() when $default != null:
return $default(_that.id,_that.name,_that.note,_that.amount,_that.debtType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String note,  double amount,  FriendDebtType debtType)  $default,) {final _that = this;
switch (_that) {
case _FriendEntity():
return $default(_that.id,_that.name,_that.note,_that.amount,_that.debtType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String note,  double amount,  FriendDebtType debtType)?  $default,) {final _that = this;
switch (_that) {
case _FriendEntity() when $default != null:
return $default(_that.id,_that.name,_that.note,_that.amount,_that.debtType);case _:
  return null;

}
}

}

/// @nodoc


class _FriendEntity implements FriendEntity {
  const _FriendEntity({required this.id, required this.name, this.note = '', this.amount = 0.0, this.debtType = FriendDebtType.paid});
  

@override final  String id;
@override final  String name;
@override@JsonKey() final  String note;
@override@JsonKey() final  double amount;
@override@JsonKey() final  FriendDebtType debtType;

/// Create a copy of FriendEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendEntityCopyWith<_FriendEntity> get copyWith => __$FriendEntityCopyWithImpl<_FriendEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.note, note) || other.note == note)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.debtType, debtType) || other.debtType == debtType));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,note,amount,debtType);

@override
String toString() {
  return 'FriendEntity(id: $id, name: $name, note: $note, amount: $amount, debtType: $debtType)';
}


}

/// @nodoc
abstract mixin class _$FriendEntityCopyWith<$Res> implements $FriendEntityCopyWith<$Res> {
  factory _$FriendEntityCopyWith(_FriendEntity value, $Res Function(_FriendEntity) _then) = __$FriendEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String note, double amount, FriendDebtType debtType
});




}
/// @nodoc
class __$FriendEntityCopyWithImpl<$Res>
    implements _$FriendEntityCopyWith<$Res> {
  __$FriendEntityCopyWithImpl(this._self, this._then);

  final _FriendEntity _self;
  final $Res Function(_FriendEntity) _then;

/// Create a copy of FriendEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? note = null,Object? amount = null,Object? debtType = null,}) {
  return _then(_FriendEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,note: null == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,debtType: null == debtType ? _self.debtType : debtType // ignore: cast_nullable_to_non_nullable
as FriendDebtType,
  ));
}


}

// dart format on
