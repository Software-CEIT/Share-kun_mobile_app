// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      id: json['id'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      avatar: json['avatar'] as String?,
      memberSince: json['memberSince'] as String,
      language: json['language'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'avatar': instance.avatar,
      'memberSince': instance.memberSince,
      'language': instance.language,
    };

_UpdateLanguageRequestModel _$UpdateLanguageRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateLanguageRequestModel(language: json['language'] as String);

Map<String, dynamic> _$UpdateLanguageRequestModelToJson(
  _UpdateLanguageRequestModel instance,
) => <String, dynamic>{'language': instance.language};
