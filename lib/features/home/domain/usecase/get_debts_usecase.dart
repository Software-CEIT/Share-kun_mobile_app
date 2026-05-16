import 'package:injectable/injectable.dart';
import 'package:share_kun/features/home/data/datasources/home_local_datasource.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/features/home/domain/repository/home_repository.dart';

@lazySingleton
class GetDebtsUsecase {
  final HomeRepository _repo;
  final HomeLocalDatasource _local;
  GetDebtsUsecase(this._repo, this._local);

  Future<(List<DebtActivityEntities>, double, double)> call({
    String? type,
    String? status,
  }) async {
    final models = await _repo.getDebts(type: type, status: status);
    final currentUserId = _local.getCurrentUserId() ?? '';
    final entities = models
        .map((m) => DebtActivityEntities.fromModel(m, currentUserId))
        .toList();

    final totalOwedToYou = models
        .where((m) => m.direction == 'owesMe')
        .fold(0.0, (sum, m) => sum + m.totalAmount);

    final totalYouOwe = models
        .where((m) => m.direction == 'iOwe')
        .fold(0.0, (sum, m) => sum + m.amountPerUser);

    return (entities, totalOwedToYou, totalYouOwe);
  }
}
