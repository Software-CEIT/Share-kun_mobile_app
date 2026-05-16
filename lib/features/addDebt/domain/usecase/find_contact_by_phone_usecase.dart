import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class FindContactByPhoneUsecase {
  final AddDebtRepository _repo;
  FindContactByPhoneUsecase(this._repo);

  Future<UserSearchEntity?> call(String phone) => _repo.findContactByPhone(phone);
}
