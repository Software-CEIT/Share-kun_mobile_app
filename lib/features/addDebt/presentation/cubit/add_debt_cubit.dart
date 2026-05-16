import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/domain/entities/contact_item_entities.dart';
import 'package:share_kun/features/addDebt/domain/usecase/create_debt_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/get_bank_accounts_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/get_saved_bank_account_usecase.dart';
import 'package:share_kun/features/addDebt/domain/usecase/save_selected_bank_account_usecase.dart';
import 'package:share_kun/features/addDebt/data/datasources/add_debt_local_datasource.dart';
import 'package:share_kun/features/friend/domain/usecase/get_friends_usecase.dart';

part 'add_debt_state.dart';
part 'add_debt_cubit.freezed.dart';

@injectable
class AddDebtCubit extends Cubit<AddDebtState> {
  final GetFriendsUsecase _getFriendsUsecase;
  final GetBankAccountsUsecase _getBankAccountsUsecase;
  final CreateDebtUsecase _createDebtUsecase;
  final GetSavedBankAccountUsecase _getSavedBankAccountUsecase;
  final SaveSelectedBankAccountUsecase _saveSelectedBankAccountUsecase;
  final AddDebtLocalDatasource _local;

  AddDebtCubit(
    this._getFriendsUsecase,
    this._getBankAccountsUsecase,
    this._createDebtUsecase,
    this._getSavedBankAccountUsecase,
    this._saveSelectedBankAccountUsecase,
    this._local,
  ) : super(const AddDebtState()) {
    _loadContacts();
    _loadBankAccounts();
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

  Future<void> _loadContacts() async {
    try {
      final friends = await _getFriendsUsecase();
      final currentUserId = _local.getCurrentUserId();
      final contacts = friends
          .where((f) => f.id != currentUserId)
          .map((f) => ContactItemEntities(id: f.id, name: f.name))
          .toList();
      emit(state.copyWith(contacts: contacts, status: DataStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _loadBankAccounts() async {
    try {
      final accounts = await _getBankAccountsUsecase();
      final savedId = _getSavedBankAccountUsecase();
      emit(state.copyWith(
        bankAccounts: accounts,
        hasBankAccount: accounts.isNotEmpty,
        selectedBankAccountId: savedId,
      ));
    } catch (_) {}
  }

  Future<void> searchContacts(String query) async {
    try {
      final friends = await _getFriendsUsecase(
        search: query.isEmpty ? null : query,
      );
      final currentUserId = _local.getCurrentUserId();
      final contacts = friends
          .where((f) => f.id != currentUserId)
          .map((f) => ContactItemEntities(id: f.id, name: f.name))
          .toList();
      emit(state.copyWith(contacts: contacts));
    } catch (_) {}
  }

  void selectContact(ContactItemEntities contact) {
    final current = List<ContactItemEntities>.from(state.selectedContacts);
    final idx = current.indexWhere((c) => c.id == contact.id);
    if (idx >= 0) {
      current.removeAt(idx);
    } else {
      current.add(contact);
    }
    emit(state.copyWith(selectedContacts: current));
  }

  void setDirection(DebtDirection direction) =>
      emit(state.copyWith(direction: direction));

  void selectBankAccount(String id) {
    emit(state.copyWith(selectedBankAccountId: id));
    _saveSelectedBankAccountUsecase(id);
  }

  void updateAmount(String raw) {
    final cleaned = raw.replaceAll(',', '.');
    final parsed = double.tryParse(cleaned) ?? 0.0;
    emit(state.copyWith(amountDisplay: raw, amount: parsed));
  }

  void updateNote(String note) => emit(state.copyWith(note: note));

  bool get canSave => state.selectedContacts.isNotEmpty && state.amount > 0;

  Future<bool> saveDebt() async {
    if (!canSave) return false;
    emit(state.copyWith(status: DataStatus.loading, errorMessage: null));

    try {
      await _createDebtUsecase(
        totalAmount: state.amount,
        direction: state.direction == DebtDirection.owesMe ? 'owesMe' : 'iOwe',
        targetUsersIds: state.selectedContacts.map((c) => c.id).toList(),
        note: state.note.isEmpty ? null : state.note,
        bankAccountId: state.direction == DebtDirection.owesMe
            ? state.selectedBankAccountId
            : null,
      );
      emit(state.copyWith(status: DataStatus.success));
      return true;
    } catch (e) {
      emit(state.copyWith(
        status: DataStatus.failure,
        errorMessage: e.toString(),
      ));
      return false;
    }
  }

  void reset() => emit(AddDebtState(
        contacts: state.contacts,
        bankAccounts: state.bankAccounts,
      ));
}
