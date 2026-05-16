import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class CreateBankAccountUsecase {
  final AddDebtRepository _repo;
  CreateBankAccountUsecase(this._repo);

  Future<BankAccountEntity> call({
    required String bank,
    required String accountNumber,
    required String holderName,
  }) =>
      _repo.createBankAccount(
        bank: bank,
        accountNumber: accountNumber,
        holderName: holderName,
      );
}
