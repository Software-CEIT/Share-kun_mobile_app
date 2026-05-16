import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/constants.dart';
import 'package:share_kun/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:share_kun/features/auth/data/model/auth_models.dart';
import 'package:share_kun/features/auth/domain/entities/auth_user_entity.dart';
import 'package:share_kun/features/auth/domain/repository/auth_repository.dart';
import 'package:share_kun/service/shared_preference_service.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource _remote;
  final SharedPreferenceService _prefs;

  AuthRepositoryImpl(this._remote, this._prefs);

  Future<AuthUserEntity> _saveAndReturn(AuthResponseModel response) async {
    await _prefs.setToken(response.accessToken);
    await _prefs.setString(PrefKeys.refreshToken, response.refreshToken);
    await _prefs.setString(PrefKeys.userId, response.user.id);
    return AuthUserEntity.fromModel(response.user);
  }

  @override
  Future<AuthUserEntity> login({
    required String phone,
    required String password,
  }) async {
    final response = await _remote.login(phone: phone, password: password);
    return _saveAndReturn(response);
  }

  @override
  Future<AuthUserEntity> register({
    required String name,
    required String phone,
    required String password,
  }) async {
    final response =
        await _remote.register(name: name, phone: phone, password: password);
    return _saveAndReturn(response);
  }

  @override
  Future<AuthUserEntity> firebaseAuth(String idToken) async {
    final response = await _remote.firebaseAuth(idToken);
    return _saveAndReturn(response);
  }

  @override
  Future<void> forgotPassword(String phone) =>
      _remote.forgotPassword(phone);
}
