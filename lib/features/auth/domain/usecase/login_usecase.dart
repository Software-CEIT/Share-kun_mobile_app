import 'package:injectable/injectable.dart';
import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';
import 'package:share_kun/features/auth/domain/repository/auth_repository.dart';

@lazySingleton
class LoginUsecase {
  final AuthRepository _repo;
  LoginUsecase(this._repo);

  Future<AuthUserEntity> call({
    required String phone,
    required String password,
  }) =>
      _repo.login(phone: phone, password: password);
}
