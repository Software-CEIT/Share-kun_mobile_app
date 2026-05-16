import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  const factory ContactModel({
    required String id,
    required String name,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}

@freezed
abstract class ContactListResponseModel with _$ContactListResponseModel {
  const factory ContactListResponseModel({
    required List<ContactModel> contacts,
  }) = _ContactListResponseModel;

  factory ContactListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ContactListResponseModelFromJson(json);
}

@freezed
abstract class CreateContactRequestModel with _$CreateContactRequestModel {
  const factory CreateContactRequestModel({
    required String name,
  }) = _CreateContactRequestModel;

  factory CreateContactRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateContactRequestModelFromJson(json);
}
