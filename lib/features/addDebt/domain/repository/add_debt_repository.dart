import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';

abstract class AddDebtRepository {
  Future<List<BankAccountEntity>> getBankAccounts();

  Future<BankAccountEntity> createBankAccount({
    required String bank,
    required String accountNumber,
    required String holderName,
  });

  Future<void> deleteBankAccount(String id);

  Future<List<ContactItemEntities>> getContacts({String? search});

  Future<ContactItemEntities> createContact(String name);

  Future<void> createDebt({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  });

  Future<UserSearchEntity?> findContactByPhone(String phone);

  Future<List<UserSearchEntity>> searchUsers(String query);

  Future<List<ContactItemEntities>> getContactUsers();

  String? getSavedBankAccountId();
  Future<void> saveBankAccountId(String id);
}
