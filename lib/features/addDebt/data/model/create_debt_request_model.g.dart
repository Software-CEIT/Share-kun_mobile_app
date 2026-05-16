// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_debt_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateDebtRequestModel _$CreateDebtRequestModelFromJson(
  Map<String, dynamic> json,
) => _CreateDebtRequestModel(
  totalAmount: (json['totalAmount'] as num).toDouble(),
  direction: json['direction'] as String,
  targetUsersIds: (json['targetUsersIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  note: json['note'] as String?,
  bankAccountId: json['bankAccountId'] as String?,
);

Map<String, dynamic> _$CreateDebtRequestModelToJson(
  _CreateDebtRequestModel instance,
) => <String, dynamic>{
  'totalAmount': instance.totalAmount,
  'direction': instance.direction,
  'targetUsersIds': instance.targetUsersIds,
  'note': instance.note,
  'bankAccountId': instance.bankAccountId,
};

_UpdateDebtStatusRequestModel _$UpdateDebtStatusRequestModelFromJson(
  Map<String, dynamic> json,
) => _UpdateDebtStatusRequestModel(status: json['status'] as String);

Map<String, dynamic> _$UpdateDebtStatusRequestModelToJson(
  _UpdateDebtStatusRequestModel instance,
) => <String, dynamic>{'status': instance.status};
