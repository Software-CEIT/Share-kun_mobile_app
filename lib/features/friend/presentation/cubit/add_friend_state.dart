part of 'add_friend_cubit.dart';

@freezed
abstract class AddFriendState with _$AddFriendState {
  const factory AddFriendState({
    @Default(DataStatus.initial) DataStatus searchStatus,
    @Default(DataStatus.initial) DataStatus addStatus,
    @Default([]) List<UserSearchEntity> searchResults,
    UserSearchEntity? foundUser,
    String? errorMessage,
    String? addedUserId,
  }) = _AddFriendState;
}
