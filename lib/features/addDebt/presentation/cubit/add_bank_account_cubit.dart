import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/usecase/create_bank_account_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/delete_bank_account_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/get_bank_accounts_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/save_selected_bank_account_usecase.dart';

part 'add_bank_account_state.dart';
part 'add_bank_account_cubit.freezed.dart';

@injectable
class AddBankAccountCubit extends Cubit<AddBankAccountState> {
  final GetBankAccountsUsecase _getBankAccountsUsecase;
  final CreateBankAccountUsecase _createBankAccountUsecase;
  final DeleteBankAccountUsecase _deleteBankAccountUsecase;
  final SaveSelectedBankAccountUsecase _saveSelectedBankAccountUsecase;

  AddBankAccountCubit(
    this._getBankAccountsUsecase,
    this._createBankAccountUsecase,
    this._deleteBankAccountUsecase,
    this._saveSelectedBankAccountUsecase,
  ) : super(const AddBankAccountState());

  Future<void> loadAccounts() async {
    emit(state.copyWith(loadStatus: DataStatus.loading));
    try {
      final accounts = await _getBankAccountsUsecase();
      emit(state.copyWith(loadStatus: DataStatus.success, accounts: accounts));
    } catch (_) {
      emit(state.copyWith(loadStatus: DataStatus.failure));
    }
  }

  Future<void> createBankAccount({
    required String bank,
    required String accountNumber,
    required String holderName,
  }) async {
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));
    try {
      await _createBankAccountUsecase(
        bank: bank,
        accountNumber: accountNumber,
        holderName: holderName,
      );
      emit(state.copyWith(status: DataStatus.success));
    } catch (e) {
      emit(
        state.copyWith(status: DataStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  Future<void> deleteBankAccount(String id) async {
    emit(
      state.copyWith(
        status: DataStatus.loading,
        deletingId: id,
        errorMessage: null,
      ),
    );
    try {
      await _deleteBankAccountUsecase(id);
      emit(state.copyWith(status: DataStatus.success, deletingId: null));
    } catch (e) {
      emit(
        state.copyWith(
          status: DataStatus.failure,
          errorMessage: e.toString(),
          deletingId: null,
        ),
      );
    }
  }

  Future<void> saveBankAccountId(String id) async {
    emit(
      state.copyWith(
        status: DataStatus.loading,
        deletingId: id,
        errorMessage: null,
      ),
    );
    try {
      await _saveSelectedBankAccountUsecase(id);
      emit(state.copyWith(status: DataStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: DataStatus.failure,
          errorMessage: e.toString(),
          deletingId: null,
        ),
      );
    }
  }
}
