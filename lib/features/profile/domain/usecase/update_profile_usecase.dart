import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:share_kun/features/profile/domain/entities/profile_entity.dart';
import 'package:share_kun/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class UpdateProfileUsecase {
  final ProfileRepository _repo;
  UpdateProfileUsecase(this._repo);

  Future<ProfileEntity> call({String? name, File? avatar}) =>
      _repo.updateProfile(name: name, avatar: avatar);
}
