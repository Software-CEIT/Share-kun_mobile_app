import 'package:injectable/injectable.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/features/auth/data/model/auth_models.dart';

abstract class AuthRemoteDatasource {
  Future<AuthResponseModel> login({
    required String phone,
    required String password,
  });

  Future<AuthResponseModel> register({
    required String name,
    required String phone,
    required String password,
  });

  Future<AuthResponseModel> firebaseAuth(String idToken);

  Future<void> forgotPassword(String phone);
}

@LazySingleton(as: AuthRemoteDatasource)
class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final RestClient _client;
  AuthRemoteDatasourceImpl(this._client);

  @override
  Future<AuthResponseModel> login({
    required String phone,
    required String password,
  }) =>
      _client.login(LoginRequestModel(phone: phone, password: password));

  @override
  Future<AuthResponseModel> register({
    required String name,
    required String phone,
    required String password,
  }) =>
      _client.register(
        RegisterRequestModel(name: name, phone: phone, password: password),
      );

  @override
  Future<AuthResponseModel> firebaseAuth(String idToken) =>
      _client.firebaseAuth('Bearer $idToken');

  @override
  Future<void> forgotPassword(String phone) =>
      _client.forgotPassword(ForgotPasswordRequestModel(phone: phone));
}
