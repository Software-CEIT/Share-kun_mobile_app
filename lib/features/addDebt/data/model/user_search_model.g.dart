// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  phone: json['phone'] as String?,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'avatar': instance.avatar,
    };

_UserSearchListResponseModel _$UserSearchListResponseModelFromJson(
  Map<String, dynamic> json,
) => _UserSearchListResponseModel(
  users: (json['users'] as List<dynamic>)
      .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$UserSearchListResponseModelToJson(
  _UserSearchListResponseModel instance,
) => <String, dynamic>{'users': instance.users};

_ContactUsersPagedResponseModel _$ContactUsersPagedResponseModelFromJson(
  Map<String, dynamic> json,
) => _ContactUsersPagedResponseModel(
  users: (json['users'] as List<dynamic>)
      .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
);

Map<String, dynamic> _$ContactUsersPagedResponseModelToJson(
  _ContactUsersPagedResponseModel instance,
) => <String, dynamic>{
  'users': instance.users,
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
};

_FindByPhoneRequestModel _$FindByPhoneRequestModelFromJson(
  Map<String, dynamic> json,
) => _FindByPhoneRequestModel(phone: json['phone'] as String);

Map<String, dynamic> _$FindByPhoneRequestModelToJson(
  _FindByPhoneRequestModel instance,
) => <String, dynamic>{'phone': instance.phone};
