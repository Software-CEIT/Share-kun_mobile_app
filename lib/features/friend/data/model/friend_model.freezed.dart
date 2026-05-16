// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FriendModel {

 String get id; String get name; String? get avatar;
/// Create a copy of FriendModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendModelCopyWith<FriendModel> get copyWith => _$FriendModelCopyWithImpl<FriendModel>(this as FriendModel, _$identity);

  /// Serializes this FriendModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'FriendModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $FriendModelCopyWith<$Res>  {
  factory $FriendModelCopyWith(FriendModel value, $Res Function(FriendModel) _then) = _$FriendModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class _$FriendModelCopyWithImpl<$Res>
    implements $FriendModelCopyWith<$Res> {
  _$FriendModelCopyWithImpl(this._self, this._then);

  final FriendModel _self;
  final $Res Function(FriendModel) _then;

/// Create a copy of FriendModel
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


/// Adds pattern-matching-related methods to [FriendModel].
extension FriendModelPatterns on FriendModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendModel value)  $default,){
final _that = this;
switch (_that) {
case _FriendModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendModel value)?  $default,){
final _that = this;
switch (_that) {
case _FriendModel() when $default != null:
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
case _FriendModel() when $default != null:
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
case _FriendModel():
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
case _FriendModel() when $default != null:
return $default(_that.id,_that.name,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendModel implements FriendModel {
  const _FriendModel({required this.id, required this.name, this.avatar});
  factory _FriendModel.fromJson(Map<String, dynamic> json) => _$FriendModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? avatar;

/// Create a copy of FriendModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendModelCopyWith<_FriendModel> get copyWith => __$FriendModelCopyWithImpl<_FriendModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar);

@override
String toString() {
  return 'FriendModel(id: $id, name: $name, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$FriendModelCopyWith<$Res> implements $FriendModelCopyWith<$Res> {
  factory _$FriendModelCopyWith(_FriendModel value, $Res Function(_FriendModel) _then) = __$FriendModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? avatar
});




}
/// @nodoc
class __$FriendModelCopyWithImpl<$Res>
    implements _$FriendModelCopyWith<$Res> {
  __$FriendModelCopyWithImpl(this._self, this._then);

  final _FriendModel _self;
  final $Res Function(_FriendModel) _then;

/// Create a copy of FriendModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,}) {
  return _then(_FriendModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FriendListResponseModel {

@JsonKey(name: 'data') List<FriendModel> get data;
/// Create a copy of FriendListResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendListResponseModelCopyWith<FriendListResponseModel> get copyWith => _$FriendListResponseModelCopyWithImpl<FriendListResponseModel>(this as FriendListResponseModel, _$identity);

  /// Serializes this FriendListResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendListResponseModel&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'FriendListResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $FriendListResponseModelCopyWith<$Res>  {
  factory $FriendListResponseModelCopyWith(FriendListResponseModel value, $Res Function(FriendListResponseModel) _then) = _$FriendListResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'data') List<FriendModel> data
});




}
/// @nodoc
class _$FriendListResponseModelCopyWithImpl<$Res>
    implements $FriendListResponseModelCopyWith<$Res> {
  _$FriendListResponseModelCopyWithImpl(this._self, this._then);

  final FriendListResponseModel _self;
  final $Res Function(FriendListResponseModel) _then;

/// Create a copy of FriendListResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FriendModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendListResponseModel].
extension FriendListResponseModelPatterns on FriendListResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendListResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendListResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendListResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _FriendListResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendListResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _FriendListResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<FriendModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendListResponseModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'data')  List<FriendModel> data)  $default,) {final _that = this;
switch (_that) {
case _FriendListResponseModel():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'data')  List<FriendModel> data)?  $default,) {final _that = this;
switch (_that) {
case _FriendListResponseModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FriendListResponseModel implements FriendListResponseModel {
  const _FriendListResponseModel({@JsonKey(name: 'data') required final  List<FriendModel> data}): _data = data;
  factory _FriendListResponseModel.fromJson(Map<String, dynamic> json) => _$FriendListResponseModelFromJson(json);

 final  List<FriendModel> _data;
@override@JsonKey(name: 'data') List<FriendModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of FriendListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendListResponseModelCopyWith<_FriendListResponseModel> get copyWith => __$FriendListResponseModelCopyWithImpl<_FriendListResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FriendListResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendListResponseModel&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'FriendListResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$FriendListResponseModelCopyWith<$Res> implements $FriendListResponseModelCopyWith<$Res> {
  factory _$FriendListResponseModelCopyWith(_FriendListResponseModel value, $Res Function(_FriendListResponseModel) _then) = __$FriendListResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'data') List<FriendModel> data
});




}
/// @nodoc
class __$FriendListResponseModelCopyWithImpl<$Res>
    implements _$FriendListResponseModelCopyWith<$Res> {
  __$FriendListResponseModelCopyWithImpl(this._self, this._then);

  final _FriendListResponseModel _self;
  final $Res Function(_FriendListResponseModel) _then;

/// Create a copy of FriendListResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_FriendListResponseModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FriendModel>,
  ));
}


}

// dart format on
