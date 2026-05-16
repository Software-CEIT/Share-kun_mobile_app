import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account_model.freezed.dart';
part 'bank_account_model.g.dart';

@freezed
abstract class BankAccountModel with _$BankAccountModel {
  const factory BankAccountModel({
    required String id,
    required String bank,
    required String accountNumber,
    required String holderName,
    required String maskedNumber,
  }) = _BankAccountModel;

  factory BankAccountModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountModelFromJson(json);
}
