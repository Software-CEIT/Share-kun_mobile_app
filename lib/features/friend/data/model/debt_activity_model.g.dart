// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DebtActivityModel _$DebtActivityModelFromJson(Map<String, dynamic> json) =>
    _DebtActivityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      date: json['date'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$DebtActivityModelToJson(_DebtActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date,
      'amount': instance.amount,
      'status': instance.status,
      'type': instance.type,
    };
