import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';

abstract class AuthRepository {
  Future<AuthUserEntity> login({
    required String phone,
    required String password,
  });

  Future<AuthUserEntity> register({
    required String name,
    required String phone,
    required String password,
  });

  Future<AuthUserEntity> firebaseAuth(String idToken);

  Future<void> forgotPassword(String phone);
}
