import 'package:injectable/injectable.dart';
import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';
import 'package:share_kun/features/friend/domain/repository/friend_repository.dart';

@lazySingleton
class GetFriendsUsecase {
  final FriendRepository _repo;
  GetFriendsUsecase(this._repo);

  Future<List<FriendEntity>> call({String? search}) =>
      _repo.getFriends(search: search, limit: 100);
}
