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
mixin _$DebtActivityModel {

 String get id; String get name; String get date; double get amount; String get status;// raw string from API → mapped to enum in entities
 String get type;
/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DebtActivityModelCopyWith<DebtActivityModel> get copyWith => _$DebtActivityModelCopyWithImpl<DebtActivityModel>(this as DebtActivityModel, _$identity);

  /// Serializes this DebtActivityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DebtActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,date,amount,status,type);

@override
String toString() {
  return 'DebtActivityModel(id: $id, name: $name, date: $date, amount: $amount, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class $DebtActivityModelCopyWith<$Res>  {
  factory $DebtActivityModelCopyWith(DebtActivityModel value, $Res Function(DebtActivityModel) _then) = _$DebtActivityModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String date, double amount, String status, String type
});




}
/// @nodoc
class _$DebtActivityModelCopyWithImpl<$Res>
    implements $DebtActivityModelCopyWith<$Res> {
  _$DebtActivityModelCopyWithImpl(this._self, this._then);

  final DebtActivityModel _self;
  final $Res Function(DebtActivityModel) _then;

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? date = null,Object? amount = null,Object? status = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String date,  double amount,  String status,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
return $default(_that.id,_that.name,_that.date,_that.amount,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String date,  double amount,  String status,  String type)  $default,) {final _that = this;
switch (_that) {
case _DebtActivityModel():
return $default(_that.id,_that.name,_that.date,_that.amount,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String date,  double amount,  String status,  String type)?  $default,) {final _that = this;
switch (_that) {
case _DebtActivityModel() when $default != null:
return $default(_that.id,_that.name,_that.date,_that.amount,_that.status,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DebtActivityModel implements DebtActivityModel {
  const _DebtActivityModel({required this.id, required this.name, required this.date, required this.amount, required this.status, required this.type});
  factory _DebtActivityModel.fromJson(Map<String, dynamic> json) => _$DebtActivityModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String date;
@override final  double amount;
@override final  String status;
// raw string from API → mapped to enum in entities
@override final  String type;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DebtActivityModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.date, date) || other.date == date)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,date,amount,status,type);

@override
String toString() {
  return 'DebtActivityModel(id: $id, name: $name, date: $date, amount: $amount, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class _$DebtActivityModelCopyWith<$Res> implements $DebtActivityModelCopyWith<$Res> {
  factory _$DebtActivityModelCopyWith(_DebtActivityModel value, $Res Function(_DebtActivityModel) _then) = __$DebtActivityModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String date, double amount, String status, String type
});




}
/// @nodoc
class __$DebtActivityModelCopyWithImpl<$Res>
    implements _$DebtActivityModelCopyWith<$Res> {
  __$DebtActivityModelCopyWithImpl(this._self, this._then);

  final _DebtActivityModel _self;
  final $Res Function(_DebtActivityModel) _then;

/// Create a copy of DebtActivityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? date = null,Object? amount = null,Object? status = null,Object? type = null,}) {
  return _then(_DebtActivityModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
