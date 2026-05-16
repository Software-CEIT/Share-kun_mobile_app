import 'package:injectable/injectable.dart';
import 'package:share_kun/features/profile/domain/repository/profile_repository.dart';

@lazySingleton
class UpdateLanguageUsecase {
  final ProfileRepository _repo;
  UpdateLanguageUsecase(this._repo);

  Future<void> call(String language) => _repo.updateLanguage(language);
}
