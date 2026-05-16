import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class CreateContactUsecase {
  final AddDebtRepository _repo;
  CreateContactUsecase(this._repo);

  Future<ContactItemEntities> call(String name) => _repo.createContact(name);
}
