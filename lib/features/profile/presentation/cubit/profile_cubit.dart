import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/constants.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/usecase/get_bank_accounts_usecase.dart';
import 'package:share_kun/features/profile/domain/entities/profile_entity.dart';
import 'package:share_kun/features/profile/domain/usecase/get_profile_usecase.dart';
import 'package:share_kun/features/profile/domain/usecase/update_language_usecase.dart';
import 'package:share_kun/features/profile/domain/usecase/update_profile_usecase.dart';
import 'package:share_kun/service/shared_preference_service.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final GetProfileUsecase _getProfileUsecase;
  final UpdateProfileUsecase _updateProfileUsecase;
  final UpdateLanguageUsecase _updateLanguageUsecase;
  final GetBankAccountsUsecase _getBankAccountsUsecase;
  final SharedPreferenceService _prefs;

  ProfileCubit(
    this._getProfileUsecase,
    this._updateProfileUsecase,
    this._updateLanguageUsecase,
    this._getBankAccountsUsecase,
    this._prefs,
  ) : super(const ProfileState()) {
    loadProfile();
  }

  Future<void> loadProfile() async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final profile = await _getProfileUsecase();
      emit(state.copyWith(status: DataStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> updateProfile({String? name, File? avatar}) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final profile = await _updateProfileUsecase(name: name, avatar: avatar);
      emit(state.copyWith(status: DataStatus.success, profile: profile));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> getBankAccountList() async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      final bankAccountList = await _getBankAccountsUsecase();
      emit(state.copyWith(status: DataStatus.success, bankAccounts: bankAccountList));
    } catch(e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> updateLanguage(String language) async {
    try {
      await _updateLanguageUsecase(language);
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (_) {}
    await _prefs.removeToken();
    await _prefs.remove(PrefKeys.refreshToken);
    emit(state.copyWith(isLoggedOut: true));
  }
}
