// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactModel _$ContactModelFromJson(Map<String, dynamic> json) =>
    _ContactModel(id: json['id'] as String, name: json['name'] as String);

Map<String, dynamic> _$ContactModelToJson(_ContactModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ContactListResponseModel _$ContactListResponseModelFromJson(
  Map<String, dynamic> json,
) => _ContactListResponseModel(
  contacts: (json['contacts'] as List<dynamic>)
      .map((e) => ContactModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ContactListResponseModelToJson(
  _ContactListResponseModel instance,
) => <String, dynamic>{'contacts': instance.contacts};

_CreateContactRequestModel _$CreateContactRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateContactRequestModel(name: json['name'] as String);

Map<String, dynamic> _$CreateContactRequestModelToJson(
  _CreateContactRequestModel instance,
) => <String, dynamic>{'name': instance.name};
