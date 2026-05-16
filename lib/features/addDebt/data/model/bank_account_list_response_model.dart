import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/addDebt/data/model/bank_account_model.dart';

part 'bank_account_list_response_model.freezed.dart';
part 'bank_account_list_response_model.g.dart';

@freezed
abstract class BankAccountListResponseModel
    with _$BankAccountListResponseModel {
  const factory BankAccountListResponseModel({
    required List<BankAccountModel> bankAccounts,
  }) = _BankAccountListResponseModel;

  factory BankAccountListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountListResponseModelFromJson(json);
}
