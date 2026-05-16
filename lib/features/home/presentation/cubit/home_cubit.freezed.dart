// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 DataStatus get dataStatus; List<DebtActivityEntities> get activities; List<DebtActivityEntities> get filteredActivities; double get totalOwedToYou; double get totalYouOwe; FilterTab get selectedFilter; DataStatus get actionStatus; String? get actioningId; String? get actionErrorMessage;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&const DeepCollectionEquality().equals(other.activities, activities)&&const DeepCollectionEquality().equals(other.filteredActivities, filteredActivities)&&(identical(other.totalOwedToYou, totalOwedToYou) || other.totalOwedToYou == totalOwedToYou)&&(identical(other.totalYouOwe, totalYouOwe) || other.totalYouOwe == totalYouOwe)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actioningId, actioningId) || other.actioningId == actioningId)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,dataStatus,const DeepCollectionEquality().hash(activities),const DeepCollectionEquality().hash(filteredActivities),totalOwedToYou,totalYouOwe,selectedFilter,actionStatus,actioningId,actionErrorMessage);

@override
String toString() {
  return 'HomeState(dataStatus: $dataStatus, activities: $activities, filteredActivities: $filteredActivities, totalOwedToYou: $totalOwedToYou, totalYouOwe: $totalYouOwe, selectedFilter: $selectedFilter, actionStatus: $actionStatus, actioningId: $actioningId, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 DataStatus dataStatus, List<DebtActivityEntities> activities, List<DebtActivityEntities> filteredActivities, double totalOwedToYou, double totalYouOwe, FilterTab selectedFilter, DataStatus actionStatus, String? actioningId, String? actionErrorMessage
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dataStatus = null,Object? activities = null,Object? filteredActivities = null,Object? totalOwedToYou = null,Object? totalYouOwe = null,Object? selectedFilter = null,Object? actionStatus = null,Object? actioningId = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_self.copyWith(
dataStatus: null == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,activities: null == activities ? _self.activities : activities // ignore: cast_nullable_to_non_nullable
as List<DebtActivityEntities>,filteredActivities: null == filteredActivities ? _self.filteredActivities : filteredActivities // ignore: cast_nullable_to_non_nullable
as List<DebtActivityEntities>,totalOwedToYou: null == totalOwedToYou ? _self.totalOwedToYou : totalOwedToYou // ignore: cast_nullable_to_non_nullable
as double,totalYouOwe: null == totalYouOwe ? _self.totalYouOwe : totalYouOwe // ignore: cast_nullable_to_non_nullable
as double,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as FilterTab,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,actioningId: freezed == actioningId ? _self.actioningId : actioningId // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DataStatus dataStatus,  List<DebtActivityEntities> activities,  List<DebtActivityEntities> filteredActivities,  double totalOwedToYou,  double totalYouOwe,  FilterTab selectedFilter,  DataStatus actionStatus,  String? actioningId,  String? actionErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.dataStatus,_that.activities,_that.filteredActivities,_that.totalOwedToYou,_that.totalYouOwe,_that.selectedFilter,_that.actionStatus,_that.actioningId,_that.actionErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DataStatus dataStatus,  List<DebtActivityEntities> activities,  List<DebtActivityEntities> filteredActivities,  double totalOwedToYou,  double totalYouOwe,  FilterTab selectedFilter,  DataStatus actionStatus,  String? actioningId,  String? actionErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.dataStatus,_that.activities,_that.filteredActivities,_that.totalOwedToYou,_that.totalYouOwe,_that.selectedFilter,_that.actionStatus,_that.actioningId,_that.actionErrorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DataStatus dataStatus,  List<DebtActivityEntities> activities,  List<DebtActivityEntities> filteredActivities,  double totalOwedToYou,  double totalYouOwe,  FilterTab selectedFilter,  DataStatus actionStatus,  String? actioningId,  String? actionErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.dataStatus,_that.activities,_that.filteredActivities,_that.totalOwedToYou,_that.totalYouOwe,_that.selectedFilter,_that.actionStatus,_that.actioningId,_that.actionErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({this.dataStatus = DataStatus.initial, final  List<DebtActivityEntities> activities = const [], final  List<DebtActivityEntities> filteredActivities = const [], this.totalOwedToYou = 0.0, this.totalYouOwe = 0.0, this.selectedFilter = FilterTab.all, this.actionStatus = DataStatus.initial, this.actioningId, this.actionErrorMessage}): _activities = activities,_filteredActivities = filteredActivities;
  

@override@JsonKey() final  DataStatus dataStatus;
 final  List<DebtActivityEntities> _activities;
@override@JsonKey() List<DebtActivityEntities> get activities {
  if (_activities is EqualUnmodifiableListView) return _activities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activities);
}

 final  List<DebtActivityEntities> _filteredActivities;
@override@JsonKey() List<DebtActivityEntities> get filteredActivities {
  if (_filteredActivities is EqualUnmodifiableListView) return _filteredActivities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredActivities);
}

@override@JsonKey() final  double totalOwedToYou;
@override@JsonKey() final  double totalYouOwe;
@override@JsonKey() final  FilterTab selectedFilter;
@override@JsonKey() final  DataStatus actionStatus;
@override final  String? actioningId;
@override final  String? actionErrorMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.dataStatus, dataStatus) || other.dataStatus == dataStatus)&&const DeepCollectionEquality().equals(other._activities, _activities)&&const DeepCollectionEquality().equals(other._filteredActivities, _filteredActivities)&&(identical(other.totalOwedToYou, totalOwedToYou) || other.totalOwedToYou == totalOwedToYou)&&(identical(other.totalYouOwe, totalYouOwe) || other.totalYouOwe == totalYouOwe)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.actionStatus, actionStatus) || other.actionStatus == actionStatus)&&(identical(other.actioningId, actioningId) || other.actioningId == actioningId)&&(identical(other.actionErrorMessage, actionErrorMessage) || other.actionErrorMessage == actionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,dataStatus,const DeepCollectionEquality().hash(_activities),const DeepCollectionEquality().hash(_filteredActivities),totalOwedToYou,totalYouOwe,selectedFilter,actionStatus,actioningId,actionErrorMessage);

@override
String toString() {
  return 'HomeState(dataStatus: $dataStatus, activities: $activities, filteredActivities: $filteredActivities, totalOwedToYou: $totalOwedToYou, totalYouOwe: $totalYouOwe, selectedFilter: $selectedFilter, actionStatus: $actionStatus, actioningId: $actioningId, actionErrorMessage: $actionErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 DataStatus dataStatus, List<DebtActivityEntities> activities, List<DebtActivityEntities> filteredActivities, double totalOwedToYou, double totalYouOwe, FilterTab selectedFilter, DataStatus actionStatus, String? actioningId, String? actionErrorMessage
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dataStatus = null,Object? activities = null,Object? filteredActivities = null,Object? totalOwedToYou = null,Object? totalYouOwe = null,Object? selectedFilter = null,Object? actionStatus = null,Object? actioningId = freezed,Object? actionErrorMessage = freezed,}) {
  return _then(_HomeState(
dataStatus: null == dataStatus ? _self.dataStatus : dataStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,activities: null == activities ? _self._activities : activities // ignore: cast_nullable_to_non_nullable
as List<DebtActivityEntities>,filteredActivities: null == filteredActivities ? _self._filteredActivities : filteredActivities // ignore: cast_nullable_to_non_nullable
as List<DebtActivityEntities>,totalOwedToYou: null == totalOwedToYou ? _self.totalOwedToYou : totalOwedToYou // ignore: cast_nullable_to_non_nullable
as double,totalYouOwe: null == totalYouOwe ? _self.totalYouOwe : totalYouOwe // ignore: cast_nullable_to_non_nullable
as double,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as FilterTab,actionStatus: null == actionStatus ? _self.actionStatus : actionStatus // ignore: cast_nullable_to_non_nullable
as DataStatus,actioningId: freezed == actioningId ? _self.actioningId : actioningId // ignore: cast_nullable_to_non_nullable
as String?,actionErrorMessage: freezed == actionErrorMessage ? _self.actionErrorMessage : actionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
