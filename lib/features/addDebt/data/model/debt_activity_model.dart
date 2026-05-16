import 'package:freezed_annotation/freezed_annotation.dart';

part 'debt_activity_model.freezed.dart';
part 'debt_activity_model.g.dart';

@freezed
abstract class DebtActivityModel with _$DebtActivityModel {
  const factory DebtActivityModel({
    required String id,
    required String name,
    required String date,
    required double amount,
    required String status,  // raw string from API → mapped to enum in entities
    required String type,    // raw string from API → mapped to enum in entities
  }) = _DebtActivityModel;

  factory DebtActivityModel.fromJson(Map<String, dynamic> json) =>
      _$DebtActivityModelFromJson(json);
}