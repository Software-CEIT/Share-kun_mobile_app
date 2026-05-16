// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BankAccountModel _$BankAccountModelFromJson(Map<String, dynamic> json) =>
    _BankAccountModel(
      id: json['id'] as String,
      bank: json['bank'] as String,
      accountNumber: json['accountNumber'] as String,
      holderName: json['holderName'] as String,
      maskedNumber: json['maskedNumber'] as String,
    );

Map<String, dynamic> _$BankAccountModelToJson(_BankAccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bank': instance.bank,
      'accountNumber': instance.accountNumber,
      'holderName': instance.holderName,
      'maskedNumber': instance.maskedNumber,
    };
