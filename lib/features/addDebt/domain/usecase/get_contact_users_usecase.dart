import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class GetContactUsersUsecase {
  final AddDebtRepository _repo;
  GetContactUsersUsecase(this._repo);

  Future<List<ContactItemEntities>> call() => _repo.getContactUsers();
}
