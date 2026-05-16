import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/home/data/model/contact_item_model.dart';

part 'contact_item_entities.freezed.dart';

@freezed
abstract class ContactItemEntities with _$ContactItemEntities {
  const factory ContactItemEntities({
    required String id,
    required String name
  }) = _ContactItemEntities;

  factory ContactItemEntities.fromModel(ContactItemModel m) {
    return ContactItemEntities(
      id:   m.id,
      name: m.name
    );
  }
}