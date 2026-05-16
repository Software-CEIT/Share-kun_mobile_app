import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/features/home/domain/usecase/delete_debt_usecase.dart';
import 'package:share_kun/features/home/domain/usecase/get_debts_usecase.dart';
import 'package:share_kun/features/home/domain/usecase/update_debt_status_usecase.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final GetDebtsUsecase _getDebtsUsecase;
  final UpdateDebtStatusUsecase _updateDebtStatus;
  final DeleteDebtUsecase _deleteDebt;

  HomeCubit(this._getDebtsUsecase, this._updateDebtStatus, this._deleteDebt)
      : super(const HomeState()) {
    _loadActivities();
  }

  static const _avatarColors = [
    Color(0xFF5C6BC0),
    Color(0xFF26A69A),
    Color(0xFFEF5350),
    Color(0xFFAB47BC),
    Color(0xFFFF7043),
    Color(0xFF42A5F5),
  ];

  Future<void> _loadActivities() async {
    emit(state.copyWith(dataStatus: DataStatus.loading));
    try {
      final (activities, owedToYou, youOwe) = await _getDebtsUsecase();
      emit(state.copyWith(
        dataStatus: DataStatus.success,
        activities: activities,
        filteredActivities: activities,
        totalOwedToYou: owedToYou,
        totalYouOwe: youOwe,
      ));
    } catch (e) {
      emit(state.copyWith(dataStatus: DataStatus.failure));
    }
  }

  void changeFilter(FilterTab filter) {
    final filtered = switch (filter) {
      FilterTab.owe      => state.activities.where((a) => a.type == DebtType.borrowed).toList(),
      FilterTab.borrowed => state.activities.where((a) => a.type == DebtType.owed).toList(),
      FilterTab.all      => state.activities,
    };

    emit(state.copyWith(
      selectedFilter: filter,
      filteredActivities: filtered,
    ));
  }

  Future<void> updateDebtStatus(String debtId, String status) async {
    emit(state.copyWith(
      actionStatus: DataStatus.loading,
      actioningId: debtId,
      actionErrorMessage: null,
    ));
    try {
      await _updateDebtStatus(debtId, status);
      await _loadActivities();
      emit(state.copyWith(actionStatus: DataStatus.success, actioningId: null));
    } catch (e) {
      emit(state.copyWith(
        actionStatus: DataStatus.failure,
        actionErrorMessage: e.toString(),
        actioningId: null,
      ));
    }
  }

  Future<void> deleteDebt(String debtId) async {
    emit(state.copyWith(
      actionStatus: DataStatus.loading,
      actioningId: debtId,
      actionErrorMessage: null,
    ));
    try {
      await _deleteDebt(debtId);
      final updatedAll = state.activities.where((a) => a.id != debtId).toList();
      final updatedFiltered =
          state.filteredActivities.where((a) => a.id != debtId).toList();
      emit(state.copyWith(
        actionStatus: DataStatus.success,
        actioningId: null,
        activities: updatedAll,
        filteredActivities: updatedFiltered,
      ));
    } catch (e) {
      emit(state.copyWith(
        actionStatus: DataStatus.failure,
        actionErrorMessage: e.toString(),
        actioningId: null,
      ));
    }
  }

  Future<void> refresh() => _loadActivities();

  Color avatarColorFor(String name) =>
      _avatarColors[name.codeUnitAt(0) % _avatarColors.length];
}