import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/auth/data/model/auth_models.dart';

part 'auth_user_entity.freezed.dart';

@freezed
abstract class AuthUserEntity with _$AuthUserEntity {
  const factory AuthUserEntity({
    required String id,
    required String name,
    required String phone,
    String? avatar,
    required String memberSince,
  }) = _AuthUserEntity;

  factory AuthUserEntity.fromModel(AuthUserModel m) => AuthUserEntity(
        id: m.id,
        name: m.name,
        phone: m.phone,
        avatar: m.avatar,
        memberSince: m.memberSince,
      );
}
