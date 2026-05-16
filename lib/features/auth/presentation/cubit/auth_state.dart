part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool otpSent,
    AuthUserEntity? user,
    String? errorMessage,
  }) = _AuthState;
}
