import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

abstract class HomeRepository {
  Future<List<DebtActivityModel>> getDebts({String? type, String? status});
  Future<void> updateDebtStatus(String debtId, String status);
  Future<void> deleteDebt(String debtId);
}
