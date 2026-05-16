import 'package:injectable/injectable.dart';
import 'package:share_kun/features/home/domain/repository/home_repository.dart';

@lazySingleton
class UpdateDebtStatusUsecase {
  final HomeRepository _repo;
  UpdateDebtStatusUsecase(this._repo);

  Future<void> call(String debtId, String status) =>
      _repo.updateDebtStatus(debtId, status);
}
