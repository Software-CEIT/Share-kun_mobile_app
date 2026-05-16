import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/friend/data/model/friend_model.dart';

part 'friend_entity.freezed.dart';

@freezed
abstract class FriendEntity with _$FriendEntity {
  const factory FriendEntity({
    required String id,
    required String name,
    @Default('') String note,
    @Default(0.0) double amount,
    @Default(FriendDebtType.paid) FriendDebtType debtType,
  }) = _FriendEntity;

  factory FriendEntity.fromModel(FriendModel m) => FriendEntity(
        id: m.id,
        name: m.name,
      );
}
