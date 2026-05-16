// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debt_activity_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DebtLenderModel _$DebtLenderModelFromJson(Map<String, dynamic> json) =>
    _DebtLenderModel(
      id: json['id'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$DebtLenderModelToJson(_DebtLenderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar': instance.avatar,
    };

_DebtBorrowerUserModel _$DebtBorrowerUserModelFromJson(
  Map<String, dynamic> json,
) => _DebtBorrowerUserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
);

Map<String, dynamic> _$DebtBorrowerUserModelToJson(
  _DebtBorrowerUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar': instance.avatar,
};

_DebtBorrowerModel _$DebtBorrowerModelFromJson(Map<String, dynamic> json) =>
    _DebtBorrowerModel(
      user: DebtBorrowerUserModel.fromJson(
        json['user'] as Map<String, dynamic>,
      ),
      status: json['status'] as String? ?? 'pending',
      deeplink: json['deeplink'] as String?,
      qrCode: json['qrCode'] as String?,
    );

Map<String, dynamic> _$DebtBorrowerModelToJson(_DebtBorrowerModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'status': instance.status,
      'deeplink': instance.deeplink,
      'qrCode': instance.qrCode,
    };

_DebtActivityModel _$DebtActivityModelFromJson(Map<String, dynamic> json) =>
    _DebtActivityModel(
      id: json['id'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      amountPerUser: (json['amountPerUser'] as num).toDouble(),
      direction: json['direction'] as String,
      date: json['date'] as String,
      lenderId: json['lenderId'] as String,
      lender: DebtLenderModel.fromJson(json['lender'] as Map<String, dynamic>),
      borrowers: (json['borrowers'] as List<dynamic>)
          .map((e) => DebtBorrowerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      note: json['note'] as String?,
      bankAccountId: json['bankAccountId'] as String?,
    );

Map<String, dynamic> _$DebtActivityModelToJson(_DebtActivityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'totalAmount': instance.totalAmount,
      'amountPerUser': instance.amountPerUser,
      'direction': instance.direction,
      'date': instance.date,
      'lenderId': instance.lenderId,
      'lender': instance.lender,
      'borrowers': instance.borrowers,
      'note': instance.note,
      'bankAccountId': instance.bankAccountId,
    };
