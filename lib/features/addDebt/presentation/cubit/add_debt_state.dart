part of 'add_debt_cubit.dart';

@freezed
abstract class AddDebtState with _$AddDebtState {
  const factory AddDebtState({
    @Default([]) List<ContactItemEntities> contacts,
    @Default([]) List<ContactItemEntities> selectedContacts,
    @Default([]) List<BankAccountEntity> bankAccounts,
    String? selectedBankAccountId,
    @Default(DebtDirection.owesMe) DebtDirection direction,
    @Default('') String amountDisplay,
    @Default(0.0) double amount,
    @Default('') String note,
    @Default(DataStatus.initial) DataStatus status,
    @Default(false) bool hasBankAccount,
    String? errorMessage,
  }) = _AddDebtState;
}
