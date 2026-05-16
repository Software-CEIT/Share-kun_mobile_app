// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserSearchEntity {

 String get id; String get name; String? get phone; String? get avatar;
/// Create a copy of UserSearchEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSearchEntityCopyWith<UserSearchEntity> get copyWith => _$UserSearchEntityCopyWithImpl<UserSearchEntity>(this as UserSearchEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSearchEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,phone,avatar);

@override
String toString() {
  return 'UserSearchEntity(id: $id, name: $name, phone: $phone, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UserSearchEntityCopyWith<$Res>  {
  factory $UserSearchEntityCopyWith(UserSearchEntity value, $Res Function(UserSearchEntity) _then) = _$UserSearchEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, String? avatar
});




}
/// @nodoc
class _$UserSearchEntityCopyWithImpl<$Res>
    implements $UserSearchEntityCopyWith<$Res> {
  _$UserSearchEntityCopyWithImpl(this._self, this._then);

  final UserSearchEntity _self;
  final $Res Function(UserSearchEntity) _then;

/// Create a copy of UserSearchEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSearchEntity].
extension UserSearchEntityPatterns on UserSearchEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSearchEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSearchEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSearchEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserSearchEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSearchEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserSearchEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSearchEntity() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? phone,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _UserSearchEntity():
return $default(_that.id,_that.name,_that.phone,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? phone,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _UserSearchEntity() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc


class _UserSearchEntity implements UserSearchEntity {
  const _UserSearchEntity({required this.id, required this.name, this.phone, this.avatar});
  

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  String? avatar;

/// Create a copy of UserSearchEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSearchEntityCopyWith<_UserSearchEntity> get copyWith => __$UserSearchEntityCopyWithImpl<_UserSearchEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSearchEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,phone,avatar);

@override
String toString() {
  return 'UserSearchEntity(id: $id, name: $name, phone: $phone, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UserSearchEntityCopyWith<$Res> implements $UserSearchEntityCopyWith<$Res> {
  factory _$UserSearchEntityCopyWith(_UserSearchEntity value, $Res Function(_UserSearchEntity) _then) = __$UserSearchEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, String? avatar
});




}
/// @nodoc
class __$UserSearchEntityCopyWithImpl<$Res>
    implements _$UserSearchEntityCopyWith<$Res> {
  __$UserSearchEntityCopyWithImpl(this._self, this._then);

  final _UserSearchEntity _self;
  final $Res Function(_UserSearchEntity) _then;

/// Create a copy of UserSearchEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? avatar = freezed,}) {
  return _then(_UserSearchEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
