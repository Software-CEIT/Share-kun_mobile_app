import 'package:injectable/injectable.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/features/addDebt/data/model/create_debt_request_model.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

abstract class ServiceRemoteDatasource {
  Future<List<DebtActivityModel>> getDebts({String? type, String? status});
  Future<void> updateDebtStatus(String debtId, String status);
  Future<void> deleteDebt(String debtId);
}

@LazySingleton(as: ServiceRemoteDatasource)
class ServiceRemoteDatasourceImpl implements ServiceRemoteDatasource {
  final RestClient _client;
  ServiceRemoteDatasourceImpl(this._client);

  @override
  Future<List<DebtActivityModel>> getDebts({String? type, String? status}) =>
      _client.getDebts(type: type, status: status);

  @override
  Future<void> updateDebtStatus(String debtId, String status) =>
      _client.updateDebtStatus(
        'debts/$debtId/status',
        UpdateDebtStatusRequestModel(status: status),
      );

  @override
  Future<void> deleteDebt(String debtId) =>
      _client.deleteDebt('debts/$debtId');
}
