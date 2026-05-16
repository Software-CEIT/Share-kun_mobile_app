import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/home/data/model/debt_activity_model.dart';

part 'create_debt_response_model.freezed.dart';
part 'create_debt_response_model.g.dart';

@freezed
abstract class CreateDebtResponseModel with _$CreateDebtResponseModel {
  const factory CreateDebtResponseModel({
    required List<DebtActivityModel> debts,
  }) = _CreateDebtResponseModel;

  factory CreateDebtResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateDebtResponseModelFromJson(json);
}
