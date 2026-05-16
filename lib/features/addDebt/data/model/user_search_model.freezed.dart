// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get id; String get name; String? get phone; String? get avatar;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,avatar);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, phone: $phone, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? phone, String? avatar
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
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


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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
case _UserModel() when $default != null:
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
case _UserModel():
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
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.phone,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.name, this.phone, this.avatar});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? phone;
@override final  String? avatar;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,phone,avatar);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, phone: $phone, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? phone, String? avatar
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? phone = freezed,Object? avatar = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UserSearchListResponseModel {

 List<UserModel> get users;
/// Create a copy of UserSearchListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSearchListResponseModelCopyWith<UserSearchListResponseModel> get copyWith => _$UserSearchListResponseModelCopyWithImpl<UserSearchListResponseModel>(this as UserSearchListResponseModel, _$identity);

  /// Serializes this UserSearchListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSearchListResponseModel&&const DeepCollectionEquality().equals(other.users, users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users));

@override
String toString() {
  return 'UserSearchListResponseModel(users: $users)';
}


}

/// @nodoc
abstract mixin class $UserSearchListResponseModelCopyWith<$Res>  {
  factory $UserSearchListResponseModelCopyWith(UserSearchListResponseModel value, $Res Function(UserSearchListResponseModel) _then) = _$UserSearchListResponseModelCopyWithImpl;
@useResult
$Res call({
 List<UserModel> users
});




}
/// @nodoc
class _$UserSearchListResponseModelCopyWithImpl<$Res>
    implements $UserSearchListResponseModelCopyWith<$Res> {
  _$UserSearchListResponseModelCopyWithImpl(this._self, this._then);

  final UserSearchListResponseModel _self;
  final $Res Function(UserSearchListResponseModel) _then;

/// Create a copy of UserSearchListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSearchListResponseModel].
extension UserSearchListResponseModelPatterns on UserSearchListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSearchListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSearchListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSearchListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserSearchListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSearchListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserSearchListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserModel> users)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSearchListResponseModel() when $default != null:
return $default(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserModel> users)  $default,) {final _that = this;
switch (_that) {
case _UserSearchListResponseModel():
return $default(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserModel> users)?  $default,) {final _that = this;
switch (_that) {
case _UserSearchListResponseModel() when $default != null:
return $default(_that.users);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSearchListResponseModel implements UserSearchListResponseModel {
  const _UserSearchListResponseModel({required final  List<UserModel> users}): _users = users;
  factory _UserSearchListResponseModel.fromJson(Map<String, dynamic> json) => _$UserSearchListResponseModelFromJson(json);

 final  List<UserModel> _users;
@override List<UserModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}


/// Create a copy of UserSearchListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSearchListResponseModelCopyWith<_UserSearchListResponseModel> get copyWith => __$UserSearchListResponseModelCopyWithImpl<_UserSearchListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSearchListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSearchListResponseModel&&const DeepCollectionEquality().equals(other._users, _users));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'UserSearchListResponseModel(users: $users)';
}


}

/// @nodoc
abstract mixin class _$UserSearchListResponseModelCopyWith<$Res> implements $UserSearchListResponseModelCopyWith<$Res> {
  factory _$UserSearchListResponseModelCopyWith(_UserSearchListResponseModel value, $Res Function(_UserSearchListResponseModel) _then) = __$UserSearchListResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<UserModel> users
});




}
/// @nodoc
class __$UserSearchListResponseModelCopyWithImpl<$Res>
    implements _$UserSearchListResponseModelCopyWith<$Res> {
  __$UserSearchListResponseModelCopyWithImpl(this._self, this._then);

  final _UserSearchListResponseModel _self;
  final $Res Function(_UserSearchListResponseModel) _then;

/// Create a copy of UserSearchListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_UserSearchListResponseModel(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,
  ));
}


}


/// @nodoc
mixin _$ContactUsersPagedResponseModel {

 List<UserModel> get users; int get total; int get page; int get limit;
/// Create a copy of ContactUsersPagedResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactUsersPagedResponseModelCopyWith<ContactUsersPagedResponseModel> get copyWith => _$ContactUsersPagedResponseModelCopyWithImpl<ContactUsersPagedResponseModel>(this as ContactUsersPagedResponseModel, _$identity);

  /// Serializes this ContactUsersPagedResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactUsersPagedResponseModel&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),total,page,limit);

@override
String toString() {
  return 'ContactUsersPagedResponseModel(users: $users, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $ContactUsersPagedResponseModelCopyWith<$Res>  {
  factory $ContactUsersPagedResponseModelCopyWith(ContactUsersPagedResponseModel value, $Res Function(ContactUsersPagedResponseModel) _then) = _$ContactUsersPagedResponseModelCopyWithImpl;
@useResult
$Res call({
 List<UserModel> users, int total, int page, int limit
});




}
/// @nodoc
class _$ContactUsersPagedResponseModelCopyWithImpl<$Res>
    implements $ContactUsersPagedResponseModelCopyWith<$Res> {
  _$ContactUsersPagedResponseModelCopyWithImpl(this._self, this._then);

  final ContactUsersPagedResponseModel _self;
  final $Res Function(ContactUsersPagedResponseModel) _then;

/// Create a copy of ContactUsersPagedResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? total = null,Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactUsersPagedResponseModel].
extension ContactUsersPagedResponseModelPatterns on ContactUsersPagedResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactUsersPagedResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactUsersPagedResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactUsersPagedResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserModel> users,  int total,  int page,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel() when $default != null:
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserModel> users,  int total,  int page,  int limit)  $default,) {final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel():
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserModel> users,  int total,  int page,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _ContactUsersPagedResponseModel() when $default != null:
return $default(_that.users,_that.total,_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactUsersPagedResponseModel implements ContactUsersPagedResponseModel {
  const _ContactUsersPagedResponseModel({required final  List<UserModel> users, required this.total, required this.page, required this.limit}): _users = users;
  factory _ContactUsersPagedResponseModel.fromJson(Map<String, dynamic> json) => _$ContactUsersPagedResponseModelFromJson(json);

 final  List<UserModel> _users;
@override List<UserModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override final  int total;
@override final  int page;
@override final  int limit;

/// Create a copy of ContactUsersPagedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactUsersPagedResponseModelCopyWith<_ContactUsersPagedResponseModel> get copyWith => __$ContactUsersPagedResponseModelCopyWithImpl<_ContactUsersPagedResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactUsersPagedResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactUsersPagedResponseModel&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),total,page,limit);

@override
String toString() {
  return 'ContactUsersPagedResponseModel(users: $users, total: $total, page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$ContactUsersPagedResponseModelCopyWith<$Res> implements $ContactUsersPagedResponseModelCopyWith<$Res> {
  factory _$ContactUsersPagedResponseModelCopyWith(_ContactUsersPagedResponseModel value, $Res Function(_ContactUsersPagedResponseModel) _then) = __$ContactUsersPagedResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<UserModel> users, int total, int page, int limit
});




}
/// @nodoc
class __$ContactUsersPagedResponseModelCopyWithImpl<$Res>
    implements _$ContactUsersPagedResponseModelCopyWith<$Res> {
  __$ContactUsersPagedResponseModelCopyWithImpl(this._self, this._then);

  final _ContactUsersPagedResponseModel _self;
  final $Res Function(_ContactUsersPagedResponseModel) _then;

/// Create a copy of ContactUsersPagedResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? total = null,Object? page = null,Object? limit = null,}) {
  return _then(_ContactUsersPagedResponseModel(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FindByPhoneRequestModel {

 String get phone;
/// Create a copy of FindByPhoneRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FindByPhoneRequestModelCopyWith<FindByPhoneRequestModel> get copyWith => _$FindByPhoneRequestModelCopyWithImpl<FindByPhoneRequestModel>(this as FindByPhoneRequestModel, _$identity);

  /// Serializes this FindByPhoneRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FindByPhoneRequestModel&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'FindByPhoneRequestModel(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $FindByPhoneRequestModelCopyWith<$Res>  {
  factory $FindByPhoneRequestModelCopyWith(FindByPhoneRequestModel value, $Res Function(FindByPhoneRequestModel) _then) = _$FindByPhoneRequestModelCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$FindByPhoneRequestModelCopyWithImpl<$Res>
    implements $FindByPhoneRequestModelCopyWith<$Res> {
  _$FindByPhoneRequestModelCopyWithImpl(this._self, this._then);

  final FindByPhoneRequestModel _self;
  final $Res Function(FindByPhoneRequestModel) _then;

/// Create a copy of FindByPhoneRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FindByPhoneRequestModel].
extension FindByPhoneRequestModelPatterns on FindByPhoneRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FindByPhoneRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FindByPhoneRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FindByPhoneRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FindByPhoneRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FindByPhoneRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FindByPhoneRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FindByPhoneRequestModel() when $default != null:
return $default(_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone)  $default,) {final _that = this;
switch (_that) {
case _FindByPhoneRequestModel():
return $default(_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone)?  $default,) {final _that = this;
switch (_that) {
case _FindByPhoneRequestModel() when $default != null:
return $default(_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FindByPhoneRequestModel implements FindByPhoneRequestModel {
  const _FindByPhoneRequestModel({required this.phone});
  factory _FindByPhoneRequestModel.fromJson(Map<String, dynamic> json) => _$FindByPhoneRequestModelFromJson(json);

@override final  String phone;

/// Create a copy of FindByPhoneRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FindByPhoneRequestModelCopyWith<_FindByPhoneRequestModel> get copyWith => __$FindByPhoneRequestModelCopyWithImpl<_FindByPhoneRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FindByPhoneRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FindByPhoneRequestModel&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'FindByPhoneRequestModel(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$FindByPhoneRequestModelCopyWith<$Res> implements $FindByPhoneRequestModelCopyWith<$Res> {
  factory _$FindByPhoneRequestModelCopyWith(_FindByPhoneRequestModel value, $Res Function(_FindByPhoneRequestModel) _then) = __$FindByPhoneRequestModelCopyWithImpl;
@override @useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$FindByPhoneRequestModelCopyWithImpl<$Res>
    implements _$FindByPhoneRequestModelCopyWith<$Res> {
  __$FindByPhoneRequestModelCopyWithImpl(this._self, this._then);

  final _FindByPhoneRequestModel _self;
  final $Res Function(_FindByPhoneRequestModel) _then;

/// Create a copy of FindByPhoneRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_FindByPhoneRequestModel(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
