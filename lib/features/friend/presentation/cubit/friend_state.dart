part of 'friend_cubit.dart';

@freezed
abstract class FriendState with _$FriendState {
  const factory FriendState({
    @Default(DataStatus.initial) DataStatus dataStatus,
    @Default([]) List<FriendEntity> allFriends,
    @Default([]) List<FriendEntity> filteredFriends,
    @Default('') String searchQuery,
    @Default('') String addFriendQuery,
    @Default(DataStatus.initial) DataStatus status,
  }) = _FriendState;
}
