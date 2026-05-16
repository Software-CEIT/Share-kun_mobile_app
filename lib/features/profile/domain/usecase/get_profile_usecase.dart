import 'package:injectable/injectable.dart';
import 'package:share_kun/features/profile/domain/entities/profile_entity.dart';
import 'package:share_kun/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class GetProfileUsecase {
  final ProfileRepository _repo;
  GetProfileUsecase(this._repo);

  Future<ProfileEntity> call() => _repo.getProfile();
}
