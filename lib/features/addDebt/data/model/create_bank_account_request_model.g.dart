// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_bank_account_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateBankAccountRequestModel _$CreateBankAccountRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateBankAccountRequestModel(
  bank: json['bank'] as String,
  accountNumber: json['accountNumber'] as String,
  holderName: json['holderName'] as String,
);

Map<String, dynamic> _$CreateBankAccountRequestModelToJson(
  _CreateBankAccountRequestModel instance,
) => <String, dynamic>{
  'bank': instance.bank,
  'accountNumber': instance.accountNumber,
  'holderName': instance.holderName,
};
