import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/features/profile/data/model/profile_models.dart';

abstract class ProfileRemoteDatasource {
  Future<ProfileModel> getProfile();
  Future<ProfileModel> updateProfile({String? name, File? avatar});
  Future<void> updateLanguage(String language);
}

@LazySingleton(as: ProfileRemoteDatasource)
class ProfileRemoteDatasourceImpl implements ProfileRemoteDatasource {
  final RestClient _client;
  ProfileRemoteDatasourceImpl(this._client);

  @override
  Future<ProfileModel> getProfile() => _client.getProfile();

  @override
  Future<ProfileModel> updateProfile({String? name, File? avatar}) =>
      _client.updateProfile(name, avatar);

  @override
  Future<void> updateLanguage(String language) =>
      _client.updateLanguage(UpdateLanguageRequestModel(language: language));
}
