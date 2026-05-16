import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';
import 'package:share_kun/features/addDebt/domain/usecase/create_contact_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/find_contact_by_phone_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/search_users_usecase.dart';

part 'add_friend_state.dart';
part 'add_friend_cubit.freezed.dart';

@injectable
class AddFriendCubit extends Cubit<AddFriendState> {
  final FindContactByPhoneUsecase _findByPhone;
  final SearchUsersUsecase _searchUsers;
  final CreateContactUsecase _createContact;

  AddFriendCubit(
    this._findByPhone,
    this._searchUsers,
    this._createContact,
  ) : super(const AddFriendState());

  Future<void> findByPhone(String phone) async {
    emit(state.copyWith(
      searchStatus: DataStatus.loading,
      foundUser: null,
      errorMessage: null,
    ));
    try {
      final user = await _findByPhone(phone.trim());
      emit(state.copyWith(
        searchStatus: DataStatus.success,
        foundUser: user,
        errorMessage:
            user == null ? 'No user found with this phone number' : null,
      ));
    } catch (e) {
      emit(state.copyWith(
        searchStatus: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> searchUsers(String query) async {
    if (query.trim().isEmpty) {
      emit(state.copyWith(
        searchResults: [],
        searchStatus: DataStatus.initial,
      ));
      return;
    }
    emit(state.copyWith(searchStatus: DataStatus.loading));
    try {
      final results = await _searchUsers(query.trim());
      emit(state.copyWith(
        searchStatus: DataStatus.success,
        searchResults: results,
      ));
    } catch (e) {
      emit(state.copyWith(
        searchStatus: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> addContact(UserSearchEntity user) async {
    emit(state.copyWith(addStatus: DataStatus.loading, addedUserId: null));
    try {
      await _createContact(user.name);
      emit(state.copyWith(addStatus: DataStatus.success, addedUserId: user.id));
    } catch (e) {
      emit(state.copyWith(
        addStatus: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
