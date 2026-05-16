// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debt_activity_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DebtLenderModel {

 String get id; String get name; String? get avatar;
/// Create a copy of DebtLenderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtLenderModelCopyWith<DebtLenderModel> get copyWith => _$DebtLenderModelCopyWithImpl<DebtLenderModel>(this as DebtLenderModel, _$identity);

  /// Serializes this DebtLenderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtLenderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'DebtLenderModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $DebtLenderModelCopyWith<$Res>  {
  factory $DebtLenderModelCopyWith(DebtLenderModel value, $Res Function(DebtLenderModel) _then) = _$DebtLenderModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class _$DebtLenderModelCopyWithImpl<$Res>
    implements $DebtLenderModelCopyWith<$Res> {
  _$DebtLenderModelCopyWithImpl(this._self, this._then);

  final DebtLenderModel _self;
  final $Res Function(DebtLenderModel) _then;

/// Create a copy of DebtLenderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebtLenderModel].
extension DebtLenderModelPatterns on DebtLenderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtLenderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtLenderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtLenderModel value)  $default,){
final _that = this;
switch (_that) {
case _DebtLenderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtLenderModel value)?  $default,){
final _that = this;
switch (_that) {
case _DebtLenderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtLenderModel() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _DebtLenderModel():
return $default(_that.id,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _DebtLenderModel() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtLenderModel implements DebtLenderModel {
  const _DebtLenderModel({required this.id, required this.name, this.avatar});
  factory _DebtLenderModel.fromJson(Map<String, dynamic> json) => _$DebtLenderModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatar;

/// Create a copy of DebtLenderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtLenderModelCopyWith<_DebtLenderModel> get copyWith => __$DebtLenderModelCopyWithImpl<_DebtLenderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtLenderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtLenderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'DebtLenderModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$DebtLenderModelCopyWith<$Res> implements $DebtLenderModelCopyWith<$Res> {
  factory _$DebtLenderModelCopyWith(_DebtLenderModel value, $Res Function(_DebtLenderModel) _then) = __$DebtLenderModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class __$DebtLenderModelCopyWithImpl<$Res>
    implements _$DebtLenderModelCopyWith<$Res> {
  __$DebtLenderModelCopyWithImpl(this._self, this._then);

  final _DebtLenderModel _self;
  final $Res Function(_DebtLenderModel) _then;

/// Create a copy of DebtLenderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_DebtLenderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DebtBorrowerUserModel {

 String get id; String get name; String? get avatar;
/// Create a copy of DebtBorrowerUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtBorrowerUserModelCopyWith<DebtBorrowerUserModel> get copyWith => _$DebtBorrowerUserModelCopyWithImpl<DebtBorrowerUserModel>(this as DebtBorrowerUserModel, _$identity);

  /// Serializes this DebtBorrowerUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtBorrowerUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'DebtBorrowerUserModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $DebtBorrowerUserModelCopyWith<$Res>  {
  factory $DebtBorrowerUserModelCopyWith(DebtBorrowerUserModel value, $Res Function(DebtBorrowerUserModel) _then) = _$DebtBorrowerUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class _$DebtBorrowerUserModelCopyWithImpl<$Res>
    implements $DebtBorrowerUserModelCopyWith<$Res> {
  _$DebtBorrowerUserModelCopyWithImpl(this._self, this._then);

  final DebtBorrowerUserModel _self;
  final $Res Function(DebtBorrowerUserModel) _then;

/// Create a copy of DebtBorrowerUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DebtBorrowerUserModel].
extension DebtBorrowerUserModelPatterns on DebtBorrowerUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtBorrowerUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtBorrowerUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtBorrowerUserModel value)  $default,){
final _that = this;
switch (_that) {
case _DebtBorrowerUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtBorrowerUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _DebtBorrowerUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtBorrowerUserModel() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _DebtBorrowerUserModel():
return $default(_that.id,_that.name,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _DebtBorrowerUserModel() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtBorrowerUserModel implements DebtBorrowerUserModel {
  const _DebtBorrowerUserModel({required this.id, required this.name, this.avatar});
  factory _DebtBorrowerUserModel.fromJson(Map<String, dynamic> json) => _$DebtBorrowerUserModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatar;

/// Create a copy of DebtBorrowerUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtBorrowerUserModelCopyWith<_DebtBorrowerUserModel> get copyWith => __$DebtBorrowerUserModelCopyWithImpl<_DebtBorrowerUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtBorrowerUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtBorrowerUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'DebtBorrowerUserModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$DebtBorrowerUserModelCopyWith<$Res> implements $DebtBorrowerUserModelCopyWith<$Res> {
  factory _$DebtBorrowerUserModelCopyWith(_DebtBorrowerUserModel value, $Res Function(_DebtBorrowerUserModel) _then) = __$DebtBorrowerUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class __$DebtBorrowerUserModelCopyWithImpl<$Res>
    implements _$DebtBorrowerUserModelCopyWith<$Res> {
  __$DebtBorrowerUserModelCopyWithImpl(this._self, this._then);

  final _DebtBorrowerUserModel _self;
  final $Res Function(_DebtBorrowerUserModel) _then;

/// Create a copy of DebtBorrowerUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_DebtBorrowerUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DebtBorrowerModel {

 DebtBorrowerUserModel get user; String get status; String? get deeplink; String? get qrCode;
/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtBorrowerModelCopyWith<DebtBorrowerModel> get copyWith => _$DebtBorrowerModelCopyWithImpl<DebtBorrowerModel>(this as DebtBorrowerModel, _$identity);

  /// Serializes this DebtBorrowerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtBorrowerModel&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status)&&(identical(other.deeplink, deeplink) || other.deeplink == deeplink)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,status,deeplink,qrCode);

@override
String toString() {
  return 'DebtBorrowerModel(user: $user, status: $status, deeplink: $deeplink, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class $DebtBorrowerModelCopyWith<$Res>  {
  factory $DebtBorrowerModelCopyWith(DebtBorrowerModel value, $Res Function(DebtBorrowerModel) _then) = _$DebtBorrowerModelCopyWithImpl;
@useResult
$Res call({
 DebtBorrowerUserModel user, String status, String? deeplink, String? qrCode
});


$DebtBorrowerUserModelCopyWith<$Res> get user;

}
/// @nodoc
class _$DebtBorrowerModelCopyWithImpl<$Res>
    implements $DebtBorrowerModelCopyWith<$Res> {
  _$DebtBorrowerModelCopyWithImpl(this._self, this._then);

  final DebtBorrowerModel _self;
  final $Res Function(DebtBorrowerModel) _then;

/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? status = null,Object? deeplink = freezed,Object? qrCode = freezed,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as DebtBorrowerUserModel,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deeplink: freezed == deeplink ? _self.deeplink : deeplink // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebtBorrowerUserModelCopyWith<$Res> get user {
  
  return $DebtBorrowerUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [DebtBorrowerModel].
extension DebtBorrowerModelPatterns on DebtBorrowerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtBorrowerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtBorrowerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtBorrowerModel value)  $default,){
final _that = this;
switch (_that) {
case _DebtBorrowerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtBorrowerModel value)?  $default,){
final _that = this;
switch (_that) {
case _DebtBorrowerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DebtBorrowerUserModel user,  String status,  String? deeplink,  String? qrCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtBorrowerModel() when $default != null:
return $default(_that.user,_that.status,_that.deeplink,_that.qrCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DebtBorrowerUserModel user,  String status,  String? deeplink,  String? qrCode)  $default,) {final _that = this;
switch (_that) {
case _DebtBorrowerModel():
return $default(_that.user,_that.status,_that.deeplink,_that.qrCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DebtBorrowerUserModel user,  String status,  String? deeplink,  String? qrCode)?  $default,) {final _that = this;
switch (_that) {
case _DebtBorrowerModel() when $default != null:
return $default(_that.user,_that.status,_that.deeplink,_that.qrCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtBorrowerModel implements DebtBorrowerModel {
  const _DebtBorrowerModel({required this.user, this.status = 'pending', this.deeplink, this.qrCode});
  factory _DebtBorrowerModel.fromJson(Map<String, dynamic> json) => _$DebtBorrowerModelFromJson(json);

@override final  DebtBorrowerUserModel user;
@override@JsonKey() final  String status;
@override final  String? deeplink;
@override final  String? qrCode;

/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtBorrowerModelCopyWith<_DebtBorrowerModel> get copyWith => __$DebtBorrowerModelCopyWithImpl<_DebtBorrowerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtBorrowerModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtBorrowerModel&&(identical(other.user, user) || other.user == user)&&(identical(other.status, status) || other.status == status)&&(identical(other.deeplink, deeplink) || other.deeplink == deeplink)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,status,deeplink,qrCode);

@override
String toString() {
  return 'DebtBorrowerModel(user: $user, status: $status, deeplink: $deeplink, qrCode: $qrCode)';
}


}

/// @nodoc
abstract mixin class _$DebtBorrowerModelCopyWith<$Res> implements $DebtBorrowerModelCopyWith<$Res> {
  factory _$DebtBorrowerModelCopyWith(_DebtBorrowerModel value, $Res Function(_DebtBorrowerModel) _then) = __$DebtBorrowerModelCopyWithImpl;
@override @useResult
$Res call({
 DebtBorrowerUserModel user, String status, String? deeplink, String? qrCode
});


@override $DebtBorrowerUserModelCopyWith<$Res> get user;

}
/// @nodoc
class __$DebtBorrowerModelCopyWithImpl<$Res>
    implements _$DebtBorrowerModelCopyWith<$Res> {
  __$DebtBorrowerModelCopyWithImpl(this._self, this._then);

  final _DebtBorrowerModel _self;
  final $Res Function(_DebtBorrowerModel) _then;

/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? status = null,Object? deeplink = freezed,Object? qrCode = freezed,}) {
  return _then(_DebtBorrowerModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as DebtBorrowerUserModel,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,deeplink: freezed == deeplink ? _self.deeplink : deeplink // ignore: cast_nullable_to_non_nullable
as String?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DebtBorrowerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebtBorrowerUserModelCopyWith<$Res> get user {
  
  return $DebtBorrowerUserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$DebtActivityModel {

 String get id; double get totalAmount; double get amountPerUser; String get direction; String get date; String get lenderId; DebtLenderModel get lender; List<DebtBorrowerModel> get borrowers; String? get note; String? get bankAccountId;
/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtActivityModelCopyWith<DebtActivityModel> get copyWith => _$DebtActivityModelCopyWithImpl<DebtActivityModel>(this as DebtActivityModel, _$identity);

  /// Serializes this DebtActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.amountPerUser, amountPerUser) || other.amountPerUser == amountPerUser)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.date, date) || other.date == date)&&(identical(other.lenderId, lenderId) || other.lenderId == lenderId)&&(identical(other.lender, lender) || other.lender == lender)&&const DeepCollectionEquality().equals(other.borrowers, borrowers)&&(identical(other.note, note) || other.note == note)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,amountPerUser,direction,date,lenderId,lender,const DeepCollectionEquality().hash(borrowers),note,bankAccountId);

@override
String toString() {
  return 'DebtActivityModel(id: $id, totalAmount: $totalAmount, amountPerUser: $amountPerUser, direction: $direction, date: $date, lenderId: $lenderId, lender: $lender, borrowers: $borrowers, note: $note, bankAccountId: $bankAccountId)';
}


}

/// @nodoc
abstract mixin class $DebtActivityModelCopyWith<$Res>  {
  factory $DebtActivityModelCopyWith(DebtActivityModel value, $Res Function(DebtActivityModel) _then) = _$DebtActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, double totalAmount, double amountPerUser, String direction, String date, String lenderId, DebtLenderModel lender, List<DebtBorrowerModel> borrowers, String? note, String? bankAccountId
});


$DebtLenderModelCopyWith<$Res> get lender;

}
/// @nodoc
class _$DebtActivityModelCopyWithImpl<$Res>
    implements $DebtActivityModelCopyWith<$Res> {
  _$DebtActivityModelCopyWithImpl(this._self, this._then);

  final DebtActivityModel _self;
  final $Res Function(DebtActivityModel) _then;

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? totalAmount = null,Object? amountPerUser = null,Object? direction = null,Object? date = null,Object? lenderId = null,Object? lender = null,Object? borrowers = null,Object? note = freezed,Object? bankAccountId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,amountPerUser: null == amountPerUser ? _self.amountPerUser : amountPerUser // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,lenderId: null == lenderId ? _self.lenderId : lenderId // ignore: cast_nullable_to_non_nullable
as String,lender: null == lender ? _self.lender : lender // ignore: cast_nullable_to_non_nullable
as DebtLenderModel,borrowers: null == borrowers ? _self.borrowers : borrowers // ignore: cast_nullable_to_non_nullable
as List<DebtBorrowerModel>,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebtLenderModelCopyWith<$Res> get lender {
  
  return $DebtLenderModelCopyWith<$Res>(_self.lender, (value) {
    return _then(_self.copyWith(lender: value));
  });
}
}


/// Adds pattern-matching-related methods to [DebtActivityModel].
extension DebtActivityModelPatterns on DebtActivityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DebtActivityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DebtActivityModel value)  $default,){
final _that = this;
switch (_that) {
case _DebtActivityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DebtActivityModel value)?  $default,){
final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  double totalAmount,  double amountPerUser,  String direction,  String date,  String lenderId,  DebtLenderModel lender,  List<DebtBorrowerModel> borrowers,  String? note,  String? bankAccountId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
return $default(_that.id,_that.totalAmount,_that.amountPerUser,_that.direction,_that.date,_that.lenderId,_that.lender,_that.borrowers,_that.note,_that.bankAccountId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  double totalAmount,  double amountPerUser,  String direction,  String date,  String lenderId,  DebtLenderModel lender,  List<DebtBorrowerModel> borrowers,  String? note,  String? bankAccountId)  $default,) {final _that = this;
switch (_that) {
case _DebtActivityModel():
return $default(_that.id,_that.totalAmount,_that.amountPerUser,_that.direction,_that.date,_that.lenderId,_that.lender,_that.borrowers,_that.note,_that.bankAccountId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  double totalAmount,  double amountPerUser,  String direction,  String date,  String lenderId,  DebtLenderModel lender,  List<DebtBorrowerModel> borrowers,  String? note,  String? bankAccountId)?  $default,) {final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
return $default(_that.id,_that.totalAmount,_that.amountPerUser,_that.direction,_that.date,_that.lenderId,_that.lender,_that.borrowers,_that.note,_that.bankAccountId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtActivityModel implements DebtActivityModel {
  const _DebtActivityModel({required this.id, required this.totalAmount, required this.amountPerUser, required this.direction, required this.date, required this.lenderId, required this.lender, required final  List<DebtBorrowerModel> borrowers, this.note, this.bankAccountId}): _borrowers = borrowers;
  factory _DebtActivityModel.fromJson(Map<String, dynamic> json) => _$DebtActivityModelFromJson(json);

@override final  String id;
@override final  double totalAmount;
@override final  double amountPerUser;
@override final  String direction;
@override final  String date;
@override final  String lenderId;
@override final  DebtLenderModel lender;
 final  List<DebtBorrowerModel> _borrowers;
@override List<DebtBorrowerModel> get borrowers {
  if (_borrowers is EqualUnmodifiableListView) return _borrowers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_borrowers);
}

@override final  String? note;
@override final  String? bankAccountId;

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DebtActivityModelCopyWith<_DebtActivityModel> get copyWith => __$DebtActivityModelCopyWithImpl<_DebtActivityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DebtActivityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.amountPerUser, amountPerUser) || other.amountPerUser == amountPerUser)&&(identical(other.direction, direction) || other.direction == direction)&&(identical(other.date, date) || other.date == date)&&(identical(other.lenderId, lenderId) || other.lenderId == lenderId)&&(identical(other.lender, lender) || other.lender == lender)&&const DeepCollectionEquality().equals(other._borrowers, _borrowers)&&(identical(other.note, note) || other.note == note)&&(identical(other.bankAccountId, bankAccountId) || other.bankAccountId == bankAccountId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,totalAmount,amountPerUser,direction,date,lenderId,lender,const DeepCollectionEquality().hash(_borrowers),note,bankAccountId);

@override
String toString() {
  return 'DebtActivityModel(id: $id, totalAmount: $totalAmount, amountPerUser: $amountPerUser, direction: $direction, date: $date, lenderId: $lenderId, lender: $lender, borrowers: $borrowers, note: $note, bankAccountId: $bankAccountId)';
}


}

/// @nodoc
abstract mixin class _$DebtActivityModelCopyWith<$Res> implements $DebtActivityModelCopyWith<$Res> {
  factory _$DebtActivityModelCopyWith(_DebtActivityModel value, $Res Function(_DebtActivityModel) _then) = __$DebtActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, double totalAmount, double amountPerUser, String direction, String date, String lenderId, DebtLenderModel lender, List<DebtBorrowerModel> borrowers, String? note, String? bankAccountId
});


@override $DebtLenderModelCopyWith<$Res> get lender;

}
/// @nodoc
class __$DebtActivityModelCopyWithImpl<$Res>
    implements _$DebtActivityModelCopyWith<$Res> {
  __$DebtActivityModelCopyWithImpl(this._self, this._then);

  final _DebtActivityModel _self;
  final $Res Function(_DebtActivityModel) _then;

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? totalAmount = null,Object? amountPerUser = null,Object? direction = null,Object? date = null,Object? lenderId = null,Object? lender = null,Object? borrowers = null,Object? note = freezed,Object? bankAccountId = freezed,}) {
  return _then(_DebtActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,amountPerUser: null == amountPerUser ? _self.amountPerUser : amountPerUser // ignore: cast_nullable_to_non_nullable
as double,direction: null == direction ? _self.direction : direction // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,lenderId: null == lenderId ? _self.lenderId : lenderId // ignore: cast_nullable_to_non_nullable
as String,lender: null == lender ? _self.lender : lender // ignore: cast_nullable_to_non_nullable
as DebtLenderModel,borrowers: null == borrowers ? _self._borrowers : borrowers // ignore: cast_nullable_to_non_nullable
as List<DebtBorrowerModel>,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,bankAccountId: freezed == bankAccountId ? _self.bankAccountId : bankAccountId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DebtLenderModelCopyWith<$Res> get lender {
  
  return $DebtLenderModelCopyWith<$Res>(_self.lender, (value) {
    return _then(_self.copyWith(lender: value));
  });
}
}

// dart format on
