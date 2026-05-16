import 'package:injectable/injectable.dart';
import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';
import 'package:share_kun/features/auth/domain/repository/auth_repository.dart';

@lazySingleton
class RegisterUsecase {
  final AuthRepository _repo;
  RegisterUsecase(this._repo);

  Future<AuthUserEntity> call({
    required String name,
    required String phone,
    required String password,
  }) =>
      _repo.register(name: name, phone: phone, password: password);
}
