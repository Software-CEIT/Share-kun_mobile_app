import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_models.freezed.dart';
part 'profile_models.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String id,
    required String name,
    required String phone,
    String? avatar,
    required String memberSince,
    required String language,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
abstract class UpdateLanguageRequestModel with _$UpdateLanguageRequestModel {
  const factory UpdateLanguageRequestModel({
    required String language,
  }) = _UpdateLanguageRequestModel;

  factory UpdateLanguageRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateLanguageRequestModelFromJson(json);
}
