import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/features/home/presentation/cubit/home_cubit.dart';
import 'package:share_kun/features/home/presentation/widget/activitiey_card_widget.dart';
import 'package:share_kun/features/home/presentation/widget/legend_dot_widget.dart';
import 'package:share_kun/features/home/presentation/widget/summary_card_widget.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomeCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: BlocListener<HomeCubit, HomeState>(
          listenWhen: (prev, curr) => prev.actionStatus != curr.actionStatus,
          listener: (context, state) {
            if (state.actionStatus == DataStatus.failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.actionErrorMessage ?? 'Action failed'),
                ),
              );
            }
          },
          child: BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              return RefreshIndicator(
                onRefresh: () => context.read<HomeCubit>().refresh(),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SummaryCards(
                        totalOwedToYou: state.totalOwedToYou,
                        totalYouOwe: state.totalYouOwe,
                      ),
                      const SizedBox(height: 24),
                      _RecentActivity(
                        activities: state.filteredActivities,
                        selectedFilter: state.selectedFilter,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// ─── Summary Cards ─────────────────────────────────────────────────────────────

class _SummaryCards extends StatelessWidget {
  final double totalOwedToYou;
  final double totalYouOwe;

  const _SummaryCards({
    required this.totalOwedToYou,
    required this.totalYouOwe,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SummaryCard(
            label: LocaleKeys.home_total_owed_to_you.tr(),
            amount: totalOwedToYou,
            isPrimary: true,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: SummaryCard(
            label: LocaleKeys.home_total_you_owe.tr(),
            amount: totalYouOwe,
            isPrimary: false,
          ),
        ),
      ],
    );
  }
}

// ─── Recent Activity ───────────────────────────────────────────────────────────

class _RecentActivity extends StatelessWidget {
  final List<DebtActivityEntities> activities;
  final FilterTab selectedFilter;

  const _RecentActivity({
    required this.activities,
    required this.selectedFilter,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          LocaleKeys.home_recent_activity.tr(),
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF1A1A2E),
          ),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            LegendDot(
              color: const Color(0xFF4A90D9),
              label: LocaleKeys.home_legend_others_owe.tr(),
            ),
            const SizedBox(width: 12),
            LegendDot(
              color: const Color(0xFFFFEDD8),
              label: LocaleKeys.home_legend_we_owe.tr(),
              borderColor: const Color(0xFFFFB74D),
            ),
          ],
        ),
        const SizedBox(height: 12),
        _FilterTabs(selected: selectedFilter),
        const SizedBox(height: 12),
        if (activities.isEmpty)
          const _EmptyState()
        else
          ...activities.map(
            (a) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ActivityCard(
                activity: a,
                avatarColor: cubit.avatarColorFor(a.contactName),
                onTap: () => context.router.push(DebtDetailRoute(activity: a)),
                onMarkPaid: a.type == DebtType.owed
                    ? () => cubit.updateDebtStatus(a.id, 'paid')
                    : null,
                onDelete: () => cubit.deleteDebt(a.id),
              ),
            ),
          ),
      ],
    );
  }
}

// ─── Filter Tabs ───────────────────────────────────────────────────────────────

class _FilterTabs extends StatelessWidget {
  final FilterTab selected;
  const _FilterTabs({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: FilterTab.values.map((tab) {
        final isSelected = selected == tab;
        final label = switch (tab) {
          FilterTab.all      => LocaleKeys.home_filter_all.tr(),
          FilterTab.owe      => LocaleKeys.home_filter_owe.tr(),
          FilterTab.borrowed => LocaleKeys.home_filter_borrowed.tr(),
        };
        final cubit = context.read<HomeCubit>();
        return Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: () => cubit.changeFilter(tab),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? const Color(0xFF4A90D9) : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected
                      ? const Color(0xFF4A90D9)
                      : const Color(0xFFDDE3ED),
                ),
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: const Color(0xFF4A90D9).withValues(alpha: 0.3),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ]
                    : [],
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : const Color(0xFF6B7280),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

// ─── Empty State ───────────────────────────────────────────────────────────────

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FE),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Icon(
                Icons.receipt_long_outlined,
                size: 40,
                color: Color(0xFF4A90D9),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              LocaleKeys.home_empty_title.tr(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              LocaleKeys.home_empty_subtitle.tr(),
              style: const TextStyle(fontSize: 13, color: Color(0xFF9CA3AF)),
            ),
          ],
        ),
      ),
    );
  }
}