import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_model.freezed.dart';
part 'friend_model.g.dart';

@freezed
abstract class FriendModel with _$FriendModel {
  const factory FriendModel({
    required String id,
    required String name,
    String? avatar,
  }) = _FriendModel;

  factory FriendModel.fromJson(Map<String, dynamic> json) =>
      _$FriendModelFromJson(json);
}

@freezed
abstract class FriendListResponseModel with _$FriendListResponseModel {
  const factory FriendListResponseModel({
    @JsonKey(name: 'data') required List<FriendModel> data,
  }) = _FriendListResponseModel;

  factory FriendListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FriendListResponseModelFromJson(json);
}
