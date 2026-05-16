// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FriendModel _$FriendModelFromJson(Map<String, dynamic> json) => _FriendModel(
  id: json['id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$FriendModelToJson(_FriendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_FriendListResponseModel _$FriendListResponseModelFromJson(
  Map<String, dynamic> json,
) => _FriendListResponseModel(
  data: (json['data'] as List<dynamic>)
      .map((e) => FriendModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$FriendListResponseModelToJson(
  _FriendListResponseModel instance,
) => <String, dynamic>{'data': instance.data};
