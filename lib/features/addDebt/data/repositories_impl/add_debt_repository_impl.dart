import 'package:injectable/injectable.dart';
import 'package:share_kun/features/addDebt/data/datasources/add_debt_local_datasource.dart';
import 'package:share_kun/features/addDebt/data/datasources/add_debt_remote_datasource.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';
import 'package:share_kun/features/addDebt/domain/repository/add_debt_repository.dart';
import 'package:share_kun/features/home/data/model/contact_item_model.dart';

@LazySingleton(as: AddDebtRepository)
class AddDebtRepositoryImpl implements AddDebtRepository {
  final AddDebtRemoteDatasource _remote;
  final AddDebtLocalDatasource _local;
  AddDebtRepositoryImpl(this._remote, this._local);

  @override
  Future<List<BankAccountEntity>> getBankAccounts() async {
    final models = await _remote.getBankAccounts();
    return models.map(BankAccountEntity.fromModel).toList();
  }

  @override
  Future<BankAccountEntity> createBankAccount({
    required String bank,
    required String accountNumber,
    required String holderName,
  }) async {
    final model = await _remote.createBankAccount(
      bank: bank,
      accountNumber: accountNumber,
      holderName: holderName,
    );
    return BankAccountEntity.fromModel(model);
  }

  @override
  Future<void> deleteBankAccount(String id) => _remote.deleteBankAccount(id);

  @override
  Future<List<ContactItemEntities>> getContacts({String? search}) async {
    final models = await _remote.getContacts(search: search);
    return models
        .map((m) => ContactItemEntities.fromModel(
              ContactItemModel(id: m.id, name: m.name),
            ))
        .toList();
  }

  @override
  Future<ContactItemEntities> createContact(String name) async {
    final model = await _remote.createContact(name);
    return ContactItemEntities.fromModel(
      ContactItemModel(id: model.id, name: model.name),
    );
  }

  @override
  Future<UserSearchEntity?> findContactByPhone(String phone) async {
    final model = await _remote.findContactByPhone(phone);
    return model == null ? null : UserSearchEntity.fromModel(model);
  }

  @override
  Future<List<UserSearchEntity>> searchUsers(String query) async {
    final models = await _remote.searchUsers(query);
    return models.map(UserSearchEntity.fromModel).toList();
  }

  @override
  Future<List<ContactItemEntities>> getContactUsers() async {
    final users = await _remote.getContactUsers();
    return users
        .map((u) => ContactItemEntities.fromModel(
              ContactItemModel(id: u.id, name: u.name),
            ))
        .toList();
  }

  @override
  String? getSavedBankAccountId() => _local.getSavedBankAccountId();

  @override
  Future<void> saveBankAccountId(String id) => _local.saveBankAccountId(id);

  @override
  Future<void> createDebt({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  }) =>
      _remote.createDebt(
        totalAmount: totalAmount,
        direction: direction,
        targetUsersIds: targetUsersIds,
        note: note,
        bankAccountId: bankAccountId,
      );
}
