import 'package:injectable/injectable.dart';
import 'package:share_kun/features/friend/data/datasources/friend_remote_datasource.dart';
import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';
import 'package:share_kun/features/friend/domain/repository/friend_repository.dart';

@LazySingleton(as: FriendRepository)
class FriendRepositoryImpl implements FriendRepository {
  final FriendRemoteDatasource _remote;
  FriendRepositoryImpl(this._remote);

  @override
  Future<List<FriendEntity>> getFriends({String? search, int limit = 100}) async {
    final models = await _remote.getFriends(search: search, limit: limit);
    return models.map(FriendEntity.fromModel).toList();
  }
}
