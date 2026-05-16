import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:share_kun/features/profile/data/datasources/profile_remote_datasource.dart';
import 'package:share_kun/features/profile/domain/entities/profile_entity.dart';
import 'package:share_kun/features/profile/domain/repository/profile_repository.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _remote;
  ProfileRepositoryImpl(this._remote);

  @override
  Future<ProfileEntity> getProfile() async {
    final model = await _remote.getProfile();
    return ProfileEntity.fromModel(model);
  }

  @override
  Future<ProfileEntity> updateProfile({String? name, File? avatar}) async {
    final model = await _remote.updateProfile(name: name, avatar: avatar);
    return ProfileEntity.fromModel(model);
  }

  @override
  Future<void> updateLanguage(String language) =>
      _remote.updateLanguage(language);
}
