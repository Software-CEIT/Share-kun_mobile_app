part of 'home_cubit.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(DataStatus.initial) DataStatus dataStatus,
    @Default([])    List<DebtActivityEntities>  activities,
    @Default([])    List<DebtActivityEntities>  filteredActivities,
    @Default(0.0)   double              totalOwedToYou,
    @Default(0.0)   double              totalYouOwe,
    @Default(FilterTab.all) FilterTab   selectedFilter,
    @Default(DataStatus.initial) DataStatus actionStatus,
    String? actioningId,
    String? actionErrorMessage,
  }) = _HomeState;
}
