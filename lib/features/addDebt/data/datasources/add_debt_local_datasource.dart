import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/constants.dart';
import 'package:share_kun/service/shared_preference_service.dart';

abstract class AddDebtLocalDatasource {
  String? getSavedBankAccountId();
  Future<void> saveBankAccountId(String id);
  String? getCurrentUserId();
}

@LazySingleton(as: AddDebtLocalDatasource)
class AddDebtLocalDatasourceImpl implements AddDebtLocalDatasource {
  final SharedPreferenceService _prefs;
  AddDebtLocalDatasourceImpl(this._prefs);

  @override
  String? getSavedBankAccountId() =>
      _prefs.getString(PrefKeys.selectedBankAccountId);

  @override
  Future<void> saveBankAccountId(String id) =>
      _prefs.setString(PrefKeys.selectedBankAccountId, id);

  @override
  String? getCurrentUserId() => _prefs.getString(PrefKeys.userId);
}
