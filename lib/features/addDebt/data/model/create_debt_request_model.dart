import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_debt_request_model.freezed.dart';
part 'create_debt_request_model.g.dart';

@freezed
abstract class CreateDebtRequestModel with _$CreateDebtRequestModel {
  const factory CreateDebtRequestModel({
    required double totalAmount,
    required String direction,
    required List<String> targetUsersIds,
    String? note,
    String? bankAccountId,
  }) = _CreateDebtRequestModel;

  factory CreateDebtRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDebtRequestModelFromJson(json);
}

@freezed
abstract class UpdateDebtStatusRequestModel
    with _$UpdateDebtStatusRequestModel {
  const factory UpdateDebtStatusRequestModel({
    required String status,
  }) = _UpdateDebtStatusRequestModel;

  factory UpdateDebtStatusRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateDebtStatusRequestModelFromJson(json);
}
