// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FriendState {

 DataStatus get dataStatus; List<FriendEntity> get allFriends; List<FriendEntity> get filteredFriends; String get searchQuery; String get addFriendQuery; DataStatus get status;
/// Create a copy of FriendState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FriendStateCopyWith<FriendState> get copyWith => _$FriendStateCopyWithImpl<FriendState>(this as FriendState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FriendState&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&const DeepCollectionEquality().equals(other.allFriends, allFriends)&&const DeepCollectionEquality().equals(other.filteredFriends, filteredFriends)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.addFriendQuery, addFriendQuery) || other.addFriendQuery == addFriendQuery)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,dataStatus,const DeepCollectionEquality().hash(allFriends),const DeepCollectionEquality().hash(filteredFriends),searchQuery,addFriendQuery,status);

@override
String toString() {
  return 'FriendState(dataStatus: $dataStatus, allFriends: $allFriends, filteredFriends: $filteredFriends, searchQuery: $searchQuery, addFriendQuery: $addFriendQuery, status: $status)';
}


}

/// @nodoc
abstract mixin class $FriendStateCopyWith<$Res>  {
  factory $FriendStateCopyWith(FriendState value, $Res Function(FriendState) _then) = _$FriendStateCopyWithImpl;
@useResult
$Res call({
 DataStatus dataStatus, List<FriendEntity> allFriends, List<FriendEntity> filteredFriends, String searchQuery, String addFriendQuery, DataStatus status
});




}
/// @nodoc
class _$FriendStateCopyWithImpl<$Res>
    implements $FriendStateCopyWith<$Res> {
  _$FriendStateCopyWithImpl(this._self, this._then);

  final FriendState _self;
  final $Res Function(FriendState) _then;

/// Create a copy of FriendState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataStatus = null,Object? allFriends = null,Object? filteredFriends = null,Object? searchQuery = null,Object? addFriendQuery = null,Object? status = null,}) {
  return _then(_self.copyWith(
dataStatus: null == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,allFriends: null == allFriends ? _self.allFriends : allFriends // ignore: cast_nullable_to_non_nullable
as List<FriendEntity>,filteredFriends: null == filteredFriends ? _self.filteredFriends : filteredFriends // ignore: cast_nullable_to_non_nullable
as List<FriendEntity>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,addFriendQuery: null == addFriendQuery ? _self.addFriendQuery : addFriendQuery // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,
  ));
}

}


/// Adds pattern-matching-related methods to [FriendState].
extension FriendStatePatterns on FriendState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FriendState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FriendState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FriendState value)  $default,){
final _that = this;
switch (_that) {
case _FriendState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FriendState value)?  $default,){
final _that = this;
switch (_that) {
case _FriendState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataStatus dataStatus,  List<FriendEntity> allFriends,  List<FriendEntity> filteredFriends,  String searchQuery,  String addFriendQuery,  DataStatus status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FriendState() when $default != null:
return $default(_that.dataStatus,_that.allFriends,_that.filteredFriends,_that.searchQuery,_that.addFriendQuery,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataStatus dataStatus,  List<FriendEntity> allFriends,  List<FriendEntity> filteredFriends,  String searchQuery,  String addFriendQuery,  DataStatus status)  $default,) {final _that = this;
switch (_that) {
case _FriendState():
return $default(_that.dataStatus,_that.allFriends,_that.filteredFriends,_that.searchQuery,_that.addFriendQuery,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataStatus dataStatus,  List<FriendEntity> allFriends,  List<FriendEntity> filteredFriends,  String searchQuery,  String addFriendQuery,  DataStatus status)?  $default,) {final _that = this;
switch (_that) {
case _FriendState() when $default != null:
return $default(_that.dataStatus,_that.allFriends,_that.filteredFriends,_that.searchQuery,_that.addFriendQuery,_that.status);case _:
  return null;

}
}

}

/// @nodoc


class _FriendState implements FriendState {
  const _FriendState({this.dataStatus = DataStatus.initial, final  List<FriendEntity> allFriends = const [], final  List<FriendEntity> filteredFriends = const [], this.searchQuery = '', this.addFriendQuery = '', this.status = DataStatus.initial}): _allFriends = allFriends,_filteredFriends = filteredFriends;
  

@override@JsonKey() final  DataStatus dataStatus;
 final  List<FriendEntity> _allFriends;
@override@JsonKey() List<FriendEntity> get allFriends {
  if (_allFriends is EqualUnmodifiableListView) return _allFriends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allFriends);
}

 final  List<FriendEntity> _filteredFriends;
@override@JsonKey() List<FriendEntity> get filteredFriends {
  if (_filteredFriends is EqualUnmodifiableListView) return _filteredFriends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredFriends);
}

@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  String addFriendQuery;
@override@JsonKey() final  DataStatus status;

/// Create a copy of FriendState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FriendStateCopyWith<_FriendState> get copyWith => __$FriendStateCopyWithImpl<_FriendState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FriendState&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&const DeepCollectionEquality().equals(other._allFriends, _allFriends)&&const DeepCollectionEquality().equals(other._filteredFriends, _filteredFriends)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.addFriendQuery, addFriendQuery) || other.addFriendQuery == addFriendQuery)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,dataStatus,const DeepCollectionEquality().hash(_allFriends),const DeepCollectionEquality().hash(_filteredFriends),searchQuery,addFriendQuery,status);

@override
String toString() {
  return 'FriendState(dataStatus: $dataStatus, allFriends: $allFriends, filteredFriends: $filteredFriends, searchQuery: $searchQuery, addFriendQuery: $addFriendQuery, status: $status)';
}


}

/// @nodoc
abstract mixin class _$FriendStateCopyWith<$Res> implements $FriendStateCopyWith<$Res> {
  factory _$FriendStateCopyWith(_FriendState value, $Res Function(_FriendState) _then) = __$FriendStateCopyWithImpl;
@override @useResult
$Res call({
 DataStatus dataStatus, List<FriendEntity> allFriends, List<FriendEntity> filteredFriends, String searchQuery, String addFriendQuery, DataStatus status
});




}
/// @nodoc
class __$FriendStateCopyWithImpl<$Res>
    implements _$FriendStateCopyWith<$Res> {
  __$FriendStateCopyWithImpl(this._self, this._then);

  final _FriendState _self;
  final $Res Function(_FriendState) _then;

/// Create a copy of FriendState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataStatus = null,Object? allFriends = null,Object? filteredFriends = null,Object? searchQuery = null,Object? addFriendQuery = null,Object? status = null,}) {
  return _then(_FriendState(
dataStatus: null == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,allFriends: null == allFriends ? _self._allFriends : allFriends // ignore: cast_nullable_to_non_nullable
as List<FriendEntity>,filteredFriends: null == filteredFriends ? _self._filteredFriends : filteredFriends // ignore: cast_nullable_to_non_nullable
as List<FriendEntity>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,addFriendQuery: null == addFriendQuery ? _self.addFriendQuery : addFriendQuery // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as DataStatus,
  ));
}


}

// dart format on
