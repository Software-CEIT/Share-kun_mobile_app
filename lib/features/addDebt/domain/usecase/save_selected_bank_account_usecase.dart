import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class SaveSelectedBankAccountUsecase {
  final AddDebtRepository _repo;
  SaveSelectedBankAccountUsecase(this._repo);

  Future<void> call(String id) => _repo.saveBankAccountId(id);
}
