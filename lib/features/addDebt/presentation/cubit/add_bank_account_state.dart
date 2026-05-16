part of 'add_bank_account_cubit.dart';

@freezed
abstract class AddBankAccountState with _$AddBankAccountState {
  const factory AddBankAccountState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(DataStatus.initial) DataStatus loadStatus,
    @Default([]) List<BankAccountEntity> accounts,
    String? errorMessage,
    String? deletingId,
  }) = _AddBankAccountState;
}
