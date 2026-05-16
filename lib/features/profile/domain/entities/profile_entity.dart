import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/features/profile/data/model/profile_models.dart';

part 'profile_entity.freezed.dart';

@freezed
abstract class ProfileEntity with _$ProfileEntity {
  const factory ProfileEntity({
    required String id,
    required String name,
    required String phone,
    String? avatar,
    required String memberSince,
    required String language,
  }) = _ProfileEntity;

  factory ProfileEntity.fromModel(ProfileModel m) => ProfileEntity(
        id: m.id,
        name: m.name,
        phone: m.phone,
        avatar: m.avatar,
        memberSince: m.memberSince,
        language: m.language,
      );
}
