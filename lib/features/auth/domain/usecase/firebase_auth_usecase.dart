import 'package:injectable/injectable.dart';
import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';
import 'package:share_kun/features/auth/domain/repository/auth_repository.dart';

@lazySingleton
class FirebaseAuthUsecase {
  final AuthRepository _repo;
  FirebaseAuthUsecase(this._repo);

  Future<AuthUserEntity> call(String idToken) => _repo.firebaseAuth(idToken);
}
