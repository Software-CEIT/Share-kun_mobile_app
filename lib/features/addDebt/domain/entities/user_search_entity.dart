import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/addDebt/data/model/user_search_model.dart';

part 'user_search_entity.freezed.dart';

@freezed
abstract class UserSearchEntity with _$UserSearchEntity {
  const factory UserSearchEntity({
    required String id,
    required String name,
    String? phone,
    String? avatar,
  }) = _UserSearchEntity;

  factory UserSearchEntity.fromModel(UserModel m) =>
      UserSearchEntity(id: m.id, name: m.name, phone: m.phone, avatar: m.avatar);
}
