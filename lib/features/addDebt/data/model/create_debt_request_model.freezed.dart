// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_debt_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateDebtRequestModel {

 double get totalAmount; String get direction; List<String> get targetUsersIds; String? get note; String? get bankAccountId;
/// Create a copy of CreateDebtRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDebtRequestModelCopyWith<CreateDebtRequestModel> get copyWith => _$CreateDebtRequestModelCopyWithImpl<CreateDebtRequestModel>(this as CreateDebtRequestModel, _$identity);

  /// Serializes this CreateDebtRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDebtRequestModel&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.direction, direction) || other.direction == direction)&&const DeepCollectionEquality().equals(other.targetUsersIds, targetUsersIds)&&(identical(other.note, note) || other.note == note)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,direction,const DeepCollectionEquality().hash(targetUsersIds),note,bankAccountId);

@override
String toString() {
  return 'CreateDebtRequestModel(totalAmount: $totalAmount, direction: $direction, targetUsersIds: $targetUsersIds, note: $note, bankAccountId: $bankAccountId)';
}


}

/// @nodoc
abstract mixin class $CreateDebtRequestModelCopyWith<$Res>  {
  factory $CreateDebtRequestModelCopyWith(CreateDebtRequestModel value, $Res Function(CreateDebtRequestModel) _then) = _$CreateDebtRequestModelCopyWithImpl;
@useResult
$Res call({
 double totalAmount, String direction, List<String> targetUsersIds, String? note, String? bankAccountId
});




}
/// @nodoc
class _$CreateDebtRequestModelCopyWithImpl<$Res>
    implements $CreateDebtRequestModelCopyWith<$Res> {
  _$CreateDebtRequestModelCopyWithImpl(this._self, this._then);

  final CreateDebtRequestModel _self;
  final $Res Function(CreateDebtRequestModel) _then;

/// Create a copy of CreateDebtRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalAmount = null,Object? direction = null,Object? targetUsersIds = null,Object? note = freezed,Object? bankAccountId = freezed,}) {
  return _then(_self.copyWith(
totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,targetUsersIds: null == targetUsersIds ? _self.targetUsersIds : targetUsersIds // ignore: cast_nullable_to_non_nullable
as List<String>,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateDebtRequestModel].
extension CreateDebtRequestModelPatterns on CreateDebtRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateDebtRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateDebtRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateDebtRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateDebtRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateDebtRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateDebtRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double totalAmount,  String direction,  List<String> targetUsersIds,  String? note,  String? bankAccountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateDebtRequestModel() when $default != null:
return $default(_that.totalAmount,_that.direction,_that.targetUsersIds,_that.note,_that.bankAccountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double totalAmount,  String direction,  List<String> targetUsersIds,  String? note,  String? bankAccountId)  $default,) {final _that = this;
switch (_that) {
case _CreateDebtRequestModel():
return $default(_that.totalAmount,_that.direction,_that.targetUsersIds,_that.note,_that.bankAccountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double totalAmount,  String direction,  List<String> targetUsersIds,  String? note,  String? bankAccountId)?  $default,) {final _that = this;
switch (_that) {
case _CreateDebtRequestModel() when $default != null:
return $default(_that.totalAmount,_that.direction,_that.targetUsersIds,_that.note,_that.bankAccountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateDebtRequestModel implements CreateDebtRequestModel {
  const _CreateDebtRequestModel({required this.totalAmount, required this.direction, required final  List<String> targetUsersIds, this.note, this.bankAccountId}): _targetUsersIds = targetUsersIds;
  factory _CreateDebtRequestModel.fromJson(Map<String, dynamic> json) => _$CreateDebtRequestModelFromJson(json);

@override final  double totalAmount;
@override final  String direction;
 final  List<String> _targetUsersIds;
@override List<String> get targetUsersIds {
  if (_targetUsersIds is EqualUnmodifiableListView) return _targetUsersIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_targetUsersIds);
}

@override final  String? note;
@override final  String? bankAccountId;

/// Create a copy of CreateDebtRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDebtRequestModelCopyWith<_CreateDebtRequestModel> get copyWith => __$CreateDebtRequestModelCopyWithImpl<_CreateDebtRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateDebtRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDebtRequestModel&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.direction, direction) || other.direction == direction)&&const DeepCollectionEquality().equals(other._targetUsersIds, _targetUsersIds)&&(identical(other.note, note) || other.note == note)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalAmount,direction,const DeepCollectionEquality().hash(_targetUsersIds),note,bankAccountId);

@override
String toString() {
  return 'CreateDebtRequestModel(totalAmount: $totalAmount, direction: $direction, targetUsersIds: $targetUsersIds, note: $note, bankAccountId: $bankAccountId)';
}


}

/// @nodoc
abstract mixin class _$CreateDebtRequestModelCopyWith<$Res> implements $CreateDebtRequestModelCopyWith<$Res> {
  factory _$CreateDebtRequestModelCopyWith(_CreateDebtRequestModel value, $Res Function(_CreateDebtRequestModel) _then) = __$CreateDebtRequestModelCopyWithImpl;
@override @useResult
$Res call({
 double totalAmount, String direction, List<String> targetUsersIds, String? note, String? bankAccountId
});




}
/// @nodoc
class __$CreateDebtRequestModelCopyWithImpl<$Res>
    implements _$CreateDebtRequestModelCopyWith<$Res> {
  __$CreateDebtRequestModelCopyWithImpl(this._self, this._then);

  final _CreateDebtRequestModel _self;
  final $Res Function(_CreateDebtRequestModel) _then;

/// Create a copy of CreateDebtRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalAmount = null,Object? direction = null,Object? targetUsersIds = null,Object? note = freezed,Object? bankAccountId = freezed,}) {
  return _then(_CreateDebtRequestModel(
totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,targetUsersIds: null == targetUsersIds ? _self._targetUsersIds : targetUsersIds // ignore: cast_nullable_to_non_nullable
as List<String>,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpdateDebtStatusRequestModel {

 String get status;
/// Create a copy of UpdateDebtStatusRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateDebtStatusRequestModelCopyWith<UpdateDebtStatusRequestModel> get copyWith => _$UpdateDebtStatusRequestModelCopyWithImpl<UpdateDebtStatusRequestModel>(this as UpdateDebtStatusRequestModel, _$identity);

  /// Serializes this UpdateDebtStatusRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateDebtStatusRequestModel&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'UpdateDebtStatusRequestModel(status: $status)';
}


}

/// @nodoc
abstract mixin class $UpdateDebtStatusRequestModelCopyWith<$Res>  {
  factory $UpdateDebtStatusRequestModelCopyWith(UpdateDebtStatusRequestModel value, $Res Function(UpdateDebtStatusRequestModel) _then) = _$UpdateDebtStatusRequestModelCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$UpdateDebtStatusRequestModelCopyWithImpl<$Res>
    implements $UpdateDebtStatusRequestModelCopyWith<$Res> {
  _$UpdateDebtStatusRequestModelCopyWithImpl(this._self, this._then);

  final UpdateDebtStatusRequestModel _self;
  final $Res Function(UpdateDebtStatusRequestModel) _then;

/// Create a copy of UpdateDebtStatusRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateDebtStatusRequestModel].
extension UpdateDebtStatusRequestModelPatterns on UpdateDebtStatusRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateDebtStatusRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateDebtStatusRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateDebtStatusRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel() when $default != null:
return $default(_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status)  $default,) {final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel():
return $default(_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status)?  $default,) {final _that = this;
switch (_that) {
case _UpdateDebtStatusRequestModel() when $default != null:
return $default(_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateDebtStatusRequestModel implements UpdateDebtStatusRequestModel {
  const _UpdateDebtStatusRequestModel({required this.status});
  factory _UpdateDebtStatusRequestModel.fromJson(Map<String, dynamic> json) => _$UpdateDebtStatusRequestModelFromJson(json);

@override final  String status;

/// Create a copy of UpdateDebtStatusRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateDebtStatusRequestModelCopyWith<_UpdateDebtStatusRequestModel> get copyWith => __$UpdateDebtStatusRequestModelCopyWithImpl<_UpdateDebtStatusRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateDebtStatusRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateDebtStatusRequestModel&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'UpdateDebtStatusRequestModel(status: $status)';
}


}

/// @nodoc
abstract mixin class _$UpdateDebtStatusRequestModelCopyWith<$Res> implements $UpdateDebtStatusRequestModelCopyWith<$Res> {
  factory _$UpdateDebtStatusRequestModelCopyWith(_UpdateDebtStatusRequestModel value, $Res Function(_UpdateDebtStatusRequestModel) _then) = __$UpdateDebtStatusRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String status
});




}
/// @nodoc
class __$UpdateDebtStatusRequestModelCopyWithImpl<$Res>
    implements _$UpdateDebtStatusRequestModelCopyWith<$Res> {
  __$UpdateDebtStatusRequestModelCopyWithImpl(this._self, this._then);

  final _UpdateDebtStatusRequestModel _self;
  final $Res Function(_UpdateDebtStatusRequestModel) _then;

/// Create a copy of UpdateDebtStatusRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(_UpdateDebtStatusRequestModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
