import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_search_model.freezed.dart';
part 'user_search_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    String? phone,
    String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class UserSearchListResponseModel with _$UserSearchListResponseModel {
  const factory UserSearchListResponseModel({
    required List<UserModel> users,
  }) = _UserSearchListResponseModel;

  factory UserSearchListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserSearchListResponseModelFromJson(json);
}

@freezed
abstract class ContactUsersPagedResponseModel with _$ContactUsersPagedResponseModel {
  const factory ContactUsersPagedResponseModel({
    required List<UserModel> users,
    required int total,
    required int page,
    required int limit,
  }) = _ContactUsersPagedResponseModel;

  factory ContactUsersPagedResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ContactUsersPagedResponseModelFromJson(json);
}

@freezed
abstract class FindByPhoneRequestModel with _$FindByPhoneRequestModel {
  const factory FindByPhoneRequestModel({
    required String phone,
  }) = _FindByPhoneRequestModel;

  factory FindByPhoneRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FindByPhoneRequestModelFromJson(json);
}
