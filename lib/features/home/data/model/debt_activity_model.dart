import 'package:freezed_annotation/freezed_annotation.dart';

part 'debt_activity_model.freezed.dart';
part 'debt_activity_model.g.dart';

@freezed
abstract class DebtLenderModel with _$DebtLenderModel {
  const factory DebtLenderModel({
    required String id,
    required String name,
    String? avatar,
  }) = _DebtLenderModel;

  factory DebtLenderModel.fromJson(Map<String, dynamic> json) =>
      _$DebtLenderModelFromJson(json);
}

@freezed
abstract class DebtBorrowerUserModel with _$DebtBorrowerUserModel {
  const factory DebtBorrowerUserModel({
    required String id,
    required String name,
    String? avatar,
  }) = _DebtBorrowerUserModel;

  factory DebtBorrowerUserModel.fromJson(Map<String, dynamic> json) =>
      _$DebtBorrowerUserModelFromJson(json);
}

@freezed
abstract class DebtBorrowerModel with _$DebtBorrowerModel {
  const factory DebtBorrowerModel({
    required DebtBorrowerUserModel user,
    @Default('pending') String status,
    String? deeplink,
    String? qrCode,
  }) = _DebtBorrowerModel;

  factory DebtBorrowerModel.fromJson(Map<String, dynamic> json) =>
      _$DebtBorrowerModelFromJson(json);
}

@freezed
abstract class DebtActivityModel with _$DebtActivityModel {
  const factory DebtActivityModel({
    required String id,
    required double totalAmount,
    required double amountPerUser,
    required String direction,
    required String date,
    required String lenderId,
    required DebtLenderModel lender,
    required List<DebtBorrowerModel> borrowers,
    String? note,
    String? bankAccountId,
  }) = _DebtActivityModel;

  factory DebtActivityModel.fromJson(Map<String, dynamic> json) =>
      _$DebtActivityModelFromJson(json);
}
