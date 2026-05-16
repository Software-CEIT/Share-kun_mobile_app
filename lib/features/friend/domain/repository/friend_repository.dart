import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';

abstract class FriendRepository {
  Future<List<FriendEntity>> getFriends({String? search, int limit = 100});
}
