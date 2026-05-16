// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddFriendState {

 DataStatus get searchStatus; DataStatus get addStatus; List<UserSearchEntity> get searchResults; UserSearchEntity? get foundUser; String? get errorMessage; String? get addedUserId;
/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddFriendStateCopyWith<AddFriendState> get copyWith => _$AddFriendStateCopyWithImpl<AddFriendState>(this as AddFriendState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddFriendState&&(identical(other.searchStatus, searchStatus) || other.searchStatus == searchStatus)&&(identical(other.addStatus, addStatus) || other.addStatus == addStatus)&&const DeepCollectionEquality().equals(other.searchResults, searchResults)&&(identical(other.foundUser, foundUser) || other.foundUser == foundUser)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.addedUserId, addedUserId) || other.addedUserId == addedUserId));
}


@override
int get hashCode => Object.hash(runtimeType,searchStatus,addStatus,const DeepCollectionEquality().hash(searchResults),foundUser,errorMessage,addedUserId);

@override
String toString() {
  return 'AddFriendState(searchStatus: $searchStatus, addStatus: $addStatus, searchResults: $searchResults, foundUser: $foundUser, errorMessage: $errorMessage, addedUserId: $addedUserId)';
}


}

/// @nodoc
abstract mixin class $AddFriendStateCopyWith<$Res>  {
  factory $AddFriendStateCopyWith(AddFriendState value, $Res Function(AddFriendState) _then) = _$AddFriendStateCopyWithImpl;
@useResult
$Res call({
 DataStatus searchStatus, DataStatus addStatus, List<UserSearchEntity> searchResults, UserSearchEntity? foundUser, String? errorMessage, String? addedUserId
});


$UserSearchEntityCopyWith<$Res>? get foundUser;

}
/// @nodoc
class _$AddFriendStateCopyWithImpl<$Res>
    implements $AddFriendStateCopyWith<$Res> {
  _$AddFriendStateCopyWithImpl(this._self, this._then);

  final AddFriendState _self;
  final $Res Function(AddFriendState) _then;

/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchStatus = null,Object? addStatus = null,Object? searchResults = null,Object? foundUser = freezed,Object? errorMessage = freezed,Object? addedUserId = freezed,}) {
  return _then(_self.copyWith(
searchStatus: null == searchStatus ? _self.searchStatus : searchStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,addStatus: null == addStatus ? _self.addStatus : addStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,foundUser: freezed == foundUser ? _self.foundUser : foundUser // ignore: cast_nullable_to_non_nullable
as UserSearchEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,addedUserId: freezed == addedUserId ? _self.addedUserId : addedUserId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSearchEntityCopyWith<$Res>? get foundUser {
    if (_self.foundUser == null) {
    return null;
  }

  return $UserSearchEntityCopyWith<$Res>(_self.foundUser!, (value) {
    return _then(_self.copyWith(foundUser: value));
  });
}
}


/// Adds pattern-matching-related methods to [AddFriendState].
extension AddFriendStatePatterns on AddFriendState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddFriendState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddFriendState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddFriendState value)  $default,){
final _that = this;
switch (_that) {
case _AddFriendState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddFriendState value)?  $default,){
final _that = this;
switch (_that) {
case _AddFriendState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataStatus searchStatus,  DataStatus addStatus,  List<UserSearchEntity> searchResults,  UserSearchEntity? foundUser,  String? errorMessage,  String? addedUserId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddFriendState() when $default != null:
return $default(_that.searchStatus,_that.addStatus,_that.searchResults,_that.foundUser,_that.errorMessage,_that.addedUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataStatus searchStatus,  DataStatus addStatus,  List<UserSearchEntity> searchResults,  UserSearchEntity? foundUser,  String? errorMessage,  String? addedUserId)  $default,) {final _that = this;
switch (_that) {
case _AddFriendState():
return $default(_that.searchStatus,_that.addStatus,_that.searchResults,_that.foundUser,_that.errorMessage,_that.addedUserId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataStatus searchStatus,  DataStatus addStatus,  List<UserSearchEntity> searchResults,  UserSearchEntity? foundUser,  String? errorMessage,  String? addedUserId)?  $default,) {final _that = this;
switch (_that) {
case _AddFriendState() when $default != null:
return $default(_that.searchStatus,_that.addStatus,_that.searchResults,_that.foundUser,_that.errorMessage,_that.addedUserId);case _:
  return null;

}
}

}

/// @nodoc


class _AddFriendState implements AddFriendState {
  const _AddFriendState({this.searchStatus = DataStatus.initial, this.addStatus = DataStatus.initial, final  List<UserSearchEntity> searchResults = const [], this.foundUser, this.errorMessage, this.addedUserId}): _searchResults = searchResults;
  

@override@JsonKey() final  DataStatus searchStatus;
@override@JsonKey() final  DataStatus addStatus;
 final  List<UserSearchEntity> _searchResults;
@override@JsonKey() List<UserSearchEntity> get searchResults {
  if (_searchResults is EqualUnmodifiableListView) return _searchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResults);
}

@override final  UserSearchEntity? foundUser;
@override final  String? errorMessage;
@override final  String? addedUserId;

/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFriendStateCopyWith<_AddFriendState> get copyWith => __$AddFriendStateCopyWithImpl<_AddFriendState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFriendState&&(identical(other.searchStatus, searchStatus) || other.searchStatus == searchStatus)&&(identical(other.addStatus, addStatus) || other.addStatus == addStatus)&&const DeepCollectionEquality().equals(other._searchResults, _searchResults)&&(identical(other.foundUser, foundUser) || other.foundUser == foundUser)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.addedUserId, addedUserId) || other.addedUserId == addedUserId));
}


@override
int get hashCode => Object.hash(runtimeType,searchStatus,addStatus,const DeepCollectionEquality().hash(_searchResults),foundUser,errorMessage,addedUserId);

@override
String toString() {
  return 'AddFriendState(searchStatus: $searchStatus, addStatus: $addStatus, searchResults: $searchResults, foundUser: $foundUser, errorMessage: $errorMessage, addedUserId: $addedUserId)';
}


}

/// @nodoc
abstract mixin class _$AddFriendStateCopyWith<$Res> implements $AddFriendStateCopyWith<$Res> {
  factory _$AddFriendStateCopyWith(_AddFriendState value, $Res Function(_AddFriendState) _then) = __$AddFriendStateCopyWithImpl;
@override @useResult
$Res call({
 DataStatus searchStatus, DataStatus addStatus, List<UserSearchEntity> searchResults, UserSearchEntity? foundUser, String? errorMessage, String? addedUserId
});


@override $UserSearchEntityCopyWith<$Res>? get foundUser;

}
/// @nodoc
class __$AddFriendStateCopyWithImpl<$Res>
    implements _$AddFriendStateCopyWith<$Res> {
  __$AddFriendStateCopyWithImpl(this._self, this._then);

  final _AddFriendState _self;
  final $Res Function(_AddFriendState) _then;

/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchStatus = null,Object? addStatus = null,Object? searchResults = null,Object? foundUser = freezed,Object? errorMessage = freezed,Object? addedUserId = freezed,}) {
  return _then(_AddFriendState(
searchStatus: null == searchStatus ? _self.searchStatus : searchStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,addStatus: null == addStatus ? _self.addStatus : addStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,searchResults: null == searchResults ? _self._searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<UserSearchEntity>,foundUser: freezed == foundUser ? _self.foundUser : foundUser // ignore: cast_nullable_to_non_nullable
as UserSearchEntity?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,addedUserId: freezed == addedUserId ? _self.addedUserId : addedUserId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AddFriendState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserSearchEntityCopyWith<$Res>? get foundUser {
    if (_self.foundUser == null) {
    return null;
  }

  return $UserSearchEntityCopyWith<$Res>(_self.foundUser!, (value) {
    return _then(_self.copyWith(foundUser: value));
  });
}
}

// dart format on
