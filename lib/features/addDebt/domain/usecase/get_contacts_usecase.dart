import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';

@lazySingleton
class GetContactsUsecase {
  final AddDebtRepository _repo;
  GetContactsUsecase(this._repo);

  Future<List<ContactItemEntities>> call({String? search}) =>
      _repo.getContacts(search: search);
}
