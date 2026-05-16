import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/constants.dart';
import 'package:share_kun/service/shared_preference_service.dart';

abstract class HomeLocalDatasource {
  String? getCurrentUserId();
}

@LazySingleton(as: HomeLocalDatasource)
class HomeLocalDatasourceImpl implements HomeLocalDatasource {
  final SharedPreferenceService _prefs;

  HomeLocalDatasourceImpl(this._prefs);

  @override
  String? getCurrentUserId() => _prefs.getString(PrefKeys.userId);
}
