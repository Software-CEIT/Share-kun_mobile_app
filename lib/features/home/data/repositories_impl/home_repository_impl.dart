import 'package:injectable/injectable.dart';
import 'package:share_kun/features/home/data/datasources/home_remote_datasource.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';
import 'package:share_kun/features/home/domain/repository/home_repository.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final ServiceRemoteDatasource _remote;
  HomeRepositoryImpl(this._remote);

  @override
  Future<List<DebtActivityModel>> getDebts({String? type, String? status}) =>
      _remote.getDebts(type: type, status: status);

  @override
  Future<void> updateDebtStatus(String debtId, String status) =>
      _remote.updateDebtStatus(debtId, status);

  @override
  Future<void> deleteDebt(String debtId) => _remote.deleteDebt(debtId);
}
