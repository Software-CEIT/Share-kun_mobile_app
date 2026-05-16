import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_bank_account_request_model.freezed.dart';
part 'create_bank_account_request_model.g.dart';

@freezed
abstract class CreateBankAccountRequestModel
    with _$CreateBankAccountRequestModel {
  const factory CreateBankAccountRequestModel({
    required String bank,
    required String accountNumber,
    required String holderName,
  }) = _CreateBankAccountRequestModel;

  factory CreateBankAccountRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateBankAccountRequestModelFromJson(json);
}
