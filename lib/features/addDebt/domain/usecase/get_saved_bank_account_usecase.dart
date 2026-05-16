import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class GetSavedBankAccountUsecase {
  final AddDebtRepository _repo;
  GetSavedBankAccountUsecase(this._repo);

  String? call() => _repo.getSavedBankAccountId();
}
