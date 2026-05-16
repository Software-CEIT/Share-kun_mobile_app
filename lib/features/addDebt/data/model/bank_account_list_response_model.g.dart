// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccountListResponseModel _$BankAccountListResponseModelFromJson(
  Map<String, dynamic> json,
) => _BankAccountListResponseModel(
  bankAccounts: (json['bankAccounts'] as List<dynamic>)
      .map((e) => BankAccountModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$BankAccountListResponseModelToJson(
  _BankAccountListResponseModel instance,
) => <String, dynamic>{'bankAccounts': instance.bankAccounts};
