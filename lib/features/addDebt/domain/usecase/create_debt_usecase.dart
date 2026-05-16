import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class CreateDebtUsecase {
  final AddDebtRepository _repo;
  CreateDebtUsecase(this._repo);

  Future<void> call({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  }) =>
      _repo.createDebt(
        totalAmount: totalAmount,
        direction: direction,
        targetUsersIds: targetUsersIds,
        note: note,
        bankAccountId: bankAccountId,
      );
}
