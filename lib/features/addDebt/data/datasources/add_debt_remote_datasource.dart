import 'package:injectable/injectable.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/features/addDebt/data/model/bank_account_model.dart';
import 'package:share_kun/features/addDebt/data/model/contact_model.dart';
import 'package:share_kun/features/addDebt/data/model/create_bank_account_request_model.dart';
import 'package:share_kun/features/addDebt/data/model/user_search_model.dart';
import 'package:share_kun/features/addDebt/data/model/create_debt_request_model.dart';

abstract class AddDebtRemoteDatasource {
  Future<List<BankAccountModel>> getBankAccounts();
  Future<BankAccountModel> createBankAccount({
    required String bank,
    required String accountNumber,
    required String holderName,
  });
  Future<void> deleteBankAccount(String id);
  Future<List<ContactModel>> getContacts({String? search});
  Future<ContactModel> createContact(String name);
  Future<void> createDebt({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  });

  Future<UserModel?> findContactByPhone(String phone);

  Future<List<UserModel>> searchUsers(String query);

  Future<List<UserModel>> getContactUsers({int? limit, int? page});
}

@LazySingleton(as: AddDebtRemoteDatasource)
class AddDebtRemoteDatasourceImpl implements AddDebtRemoteDatasource {
  final RestClient _client;
  AddDebtRemoteDatasourceImpl(this._client);

  @override
  Future<List<BankAccountModel>> getBankAccounts() async {
    final response = await _client.getBankAccounts();
    return response.bankAccounts;
  }

  @override
  Future<BankAccountModel> createBankAccount({
    required String bank,
    required String accountNumber,
    required String holderName,
  }) =>
      _client.createBankAccount(
        CreateBankAccountRequestModel(
          bank: bank,
          accountNumber: accountNumber,
          holderName: holderName,
        ),
      );

  @override
  Future<void> deleteBankAccount(String id) =>
      _client.deleteBankAccount('bank-accounts/$id');

  @override
  Future<List<ContactModel>> getContacts({String? search}) async {
    final response = await _client.getContacts(search: search);
    return response.contacts;
  }

  @override
  Future<ContactModel> createContact(String name) =>
      _client.createContact(CreateContactRequestModel(name: name));

  @override
  Future<UserModel?> findContactByPhone(String phone) =>
      _client.findContactByPhone(FindByPhoneRequestModel(phone: phone));

  @override
  Future<List<UserModel>> searchUsers(String query) async {
    final response = await _client.searchUsers(q: query);
    return response.users;
  }

  @override
  Future<List<UserModel>> getContactUsers({int? limit, int? page}) async {
    final response = await _client.getContactUsers(limit: limit ?? 100, page: page ?? 1);
    return response.users;
  }

  @override
  Future<void> createDebt({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  }) =>
      _client.createDebt(
        CreateDebtRequestModel(
          totalAmount: totalAmount,
          direction: direction,
          targetUsersIds: targetUsersIds,
          note: note,
          bankAccountId: bankAccountId,
        ),
      );
}
