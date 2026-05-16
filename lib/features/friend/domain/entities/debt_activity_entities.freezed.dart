// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_activity_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DebtActivityEntities {

 String get id; String get contactName; String get date; double get amount; DebtStatus get status; DebtType get type; String? get note;
/// Create a copy of DebtActivityEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtActivityEntitiesCopyWith<DebtActivityEntities> get copyWith => _$DebtActivityEntitiesCopyWithImpl<DebtActivityEntities>(this as DebtActivityEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtActivityEntities&&(identical(other.id, id) || other.id == id)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,contactName,date,amount,status,type,note);

@override
String toString() {
  return 'DebtActivityEntities(id: $id, contactName: $contactName, date: $date, amount: $amount, status: $status, type: $type, note: $note)';
}


}

/// @nodoc
abstract mixin class $DebtActivityEntitiesCopyWith<$Res>  {
  factory $DebtActivityEntitiesCopyWith(DebtActivityEntities value, $Res Function(DebtActivityEntities) _then) = _$DebtActivityEntitiesCopyWithImpl;
@useResult
$Res call({
 String id, String contactName, String date, double amount, DebtStatus status, DebtType type, String? note
});




}
/// @nodoc
class _$DebtActivityEntitiesCopyWithImpl<$Res>
    implements $DebtActivityEntitiesCopyWith<$Res> {
  _$DebtActivityEntitiesCopyWithImpl(this._self, this._then);

  final DebtActivityEntities _self;
  final $Res Function(DebtActivityEntities) _then;

/// Create a copy of DebtActivityEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? contactName = null,Object? date = null,Object? amount = null,Object? status = null,Object? type = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DebtStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DebtType,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebtActivityEntities].
extension DebtActivityEntitiesPatterns on DebtActivityEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtActivityEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtActivityEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtActivityEntities value)  $default,){
final _that = this;
switch (_that) {
case _DebtActivityEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtActivityEntities value)?  $default,){
final _that = this;
switch (_that) {
case _DebtActivityEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String contactName,  String date,  double amount,  DebtStatus status,  DebtType type,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtActivityEntities() when $default != null:
return $default(_that.id,_that.contactName,_that.date,_that.amount,_that.status,_that.type,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String contactName,  String date,  double amount,  DebtStatus status,  DebtType type,  String? note)  $default,) {final _that = this;
switch (_that) {
case _DebtActivityEntities():
return $default(_that.id,_that.contactName,_that.date,_that.amount,_that.status,_that.type,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String contactName,  String date,  double amount,  DebtStatus status,  DebtType type,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _DebtActivityEntities() when $default != null:
return $default(_that.id,_that.contactName,_that.date,_that.amount,_that.status,_that.type,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _DebtActivityEntities implements DebtActivityEntities {
  const _DebtActivityEntities({required this.id, required this.contactName, required this.date, required this.amount, required this.status, required this.type, this.note});
  

@override final  String id;
@override final  String contactName;
@override final  String date;
@override final  double amount;
@override final  DebtStatus status;
@override final  DebtType type;
@override final  String? note;

/// Create a copy of DebtActivityEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtActivityEntitiesCopyWith<_DebtActivityEntities> get copyWith => __$DebtActivityEntitiesCopyWithImpl<_DebtActivityEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtActivityEntities&&(identical(other.id, id) || other.id == id)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,id,contactName,date,amount,status,type,note);

@override
String toString() {
  return 'DebtActivityEntities(id: $id, contactName: $contactName, date: $date, amount: $amount, status: $status, type: $type, note: $note)';
}


}

/// @nodoc
abstract mixin class _$DebtActivityEntitiesCopyWith<$Res> implements $DebtActivityEntitiesCopyWith<$Res> {
  factory _$DebtActivityEntitiesCopyWith(_DebtActivityEntities value, $Res Function(_DebtActivityEntities) _then) = __$DebtActivityEntitiesCopyWithImpl;
@override @useResult
$Res call({
 String id, String contactName, String date, double amount, DebtStatus status, DebtType type, String? note
});




}
/// @nodoc
class __$DebtActivityEntitiesCopyWithImpl<$Res>
    implements _$DebtActivityEntitiesCopyWith<$Res> {
  __$DebtActivityEntitiesCopyWithImpl(this._self, this._then);

  final _DebtActivityEntities _self;
  final $Res Function(_DebtActivityEntities) _then;

/// Create a copy of DebtActivityEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? contactName = null,Object? date = null,Object? amount = null,Object? status = null,Object? type = null,Object? note = freezed,}) {
  return _then(_DebtActivityEntities(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,contactName: null == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DebtStatus,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as DebtType,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
