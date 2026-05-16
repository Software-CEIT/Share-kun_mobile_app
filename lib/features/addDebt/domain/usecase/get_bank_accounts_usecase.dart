import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class GetBankAccountsUsecase {
  final AddDebtRepository _repo;
  GetBankAccountsUsecase(this._repo);

  Future<List<BankAccountEntity>> call() => _repo.getBankAccounts();
}
