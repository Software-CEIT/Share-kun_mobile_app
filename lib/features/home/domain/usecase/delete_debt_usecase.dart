import 'package:injectable/injectable.dart';
import 'package:share_kun/features/home/domain/repository/home_repository.dart';

@lazySingleton
class DeleteDebtUsecase {
  final HomeRepository _repo;
  DeleteDebtUsecase(this._repo);

  Future<void> call(String debtId) => _repo.deleteDebt(debtId);
}
