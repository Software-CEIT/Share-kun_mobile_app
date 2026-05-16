import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class DeleteBankAccountUsecase {
  final AddDebtRepository _repo;
  DeleteBankAccountUsecase(this._repo);

  Future<void> call(String id) => _repo.deleteBankAccount(id);
}
