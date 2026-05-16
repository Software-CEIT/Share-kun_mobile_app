import 'package:injectable/injectable.dart';
import 'package:share_kun/core/network/network_call.dart';
import 'package:share_kun/features/friend/data/model/friend_model.dart';

abstract class FriendRemoteDatasource {
  Future<List<FriendModel>> getFriends({String? search, int page = 1, int limit = 100});
}

@LazySingleton(as: FriendRemoteDatasource)
class FriendRemoteDatasourceImpl implements FriendRemoteDatasource {
  final RestClient _client;
  FriendRemoteDatasourceImpl(this._client);

  @override
  Future<List<FriendModel>> getFriends({String? search, int page = 1, int limit = 100}) async {
    final response = await _client.getFriends(search: search, page: page, limit: limit);
    return response.data;
  }
}
