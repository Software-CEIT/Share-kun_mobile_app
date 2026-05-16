import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/features/friend/domain/entities/friend_entity.dart';
import 'package:share_kun/features/friend/domain/usecase/get_friends_usecase.dart';

part 'friend_state.dart';
part 'friend_cubit.freezed.dart';

@injectable
class FriendCubit extends Cubit<FriendState> {
  final GetFriendsUsecase _getFriendsUsecase;

  FriendCubit(this._getFriendsUsecase) : super(const FriendState()) {
    _load();
  }

  static const _avatarColors = [
    Color(0xFF5C6BC0),
    Color(0xFF26A69A),
    Color(0xFFEF5350),
    Color(0xFFAB47BC),
    Color(0xFFFF7043),
    Color(0xFF42A5F5),
  ];

  Color avatarColorFor(String name) =>
      _avatarColors[name.codeUnitAt(0) % _avatarColors.length];

  Future<void> _load() async {
    emit(state.copyWith(status: DataStatus.loading));
    try {
      final friends = await _getFriendsUsecase();
      emit(state.copyWith(
        allFriends: friends,
        filteredFriends: friends,
        status: DataStatus.success,
      ));
    } catch (e) {
      emit(state.copyWith(status: DataStatus.failure));
    }
  }

  void search(String query) {
    final q = query.trim().toLowerCase();
    emit(state.copyWith(
      searchQuery: query,
      filteredFriends: q.isEmpty
          ? state.allFriends
          : state.allFriends
              .where((f) => f.name.toLowerCase().contains(q))
              .toList(),
    ));
  }

  Future<void> refresh() => _load();

  void updateAddFriendQuery(String query) =>
      emit(state.copyWith(addFriendQuery: query));
}
