part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool isLoggedOut,
    ProfileEntity? profile,
    String? errorMessage,
     @Default([]) List<BankAccountEntity> bankAccounts
  }) = _ProfileState;
}
