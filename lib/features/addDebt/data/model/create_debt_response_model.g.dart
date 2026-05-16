// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_debt_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDebtResponseModel _$CreateDebtResponseModelFromJson(
  Map<String, dynamic> json,
) => _CreateDebtResponseModel(
  debts: (json['debts'] as List<dynamic>)
      .map((e) => DebtActivityModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateDebtResponseModelToJson(
  _CreateDebtResponseModel instance,
) => <String, dynamic>{'debts': instance.debts};
