import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';

part 'contact_item_model.freezed.dart';

@freezed
abstract class ContactItemModel with _$ContactItemModel {
  const factory ContactItemModel({
    required String id,
    required String name
  }) = _ContactItemModel;

  factory ContactItemModel.fromModel(ContactItemEntities m) {
    return ContactItemModel(
      id:   m.id,
      name: m.name
    );
  }
}