import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/friend/presentation/cubit/friend_cubit.dart';
import 'package:share_kun/features/friend/presentation/widget/friend_list_widget.dart';
import 'package:share_kun/features/friend/presentation/widget/search_bar_widget.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class FriendPage extends StatelessWidget implements AutoRouteWrapper {
  const FriendPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FriendCubit>(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FriendCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: BlocBuilder<FriendCubit, FriendState>(
          builder: (context, state) => RefreshIndicator(
            onRefresh: () => context.read<FriendCubit>().refresh(),
            child: Column(
              children: [
                const _AddFriendSection(),
                const Divider(height: 1, color: Color(0xFFE5E7EB)),
                const SizedBox(height: 12),
                SearchBarWidget(cubit: cubit),
                const SizedBox(height: 8),
                FriendList(
                  friends: state.filteredFriends,
                  searchQuery: state.searchQuery,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// ─── Add Friend Section ────────────────────────────────────────────────────────

class _AddFriendSection extends StatelessWidget {
  const _AddFriendSection();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FriendCubit>();

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
      child: Column(
        children: [
          // Add by name row
          Row(
            children: [
              Expanded(
                child: TextField(
                  onChanged:    cubit.updateAddFriendQuery,
                  onSubmitted:  (_) {},
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    hintText: LocaleKeys.friend_add_by_name_hint.tr(),
                    hintStyle: const TextStyle(color: Color(0xFF9CA3AF)),
                    filled: true,
                    fillColor: const Color(0xFFF3F4F6),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => context.router.push(const AddFriendRoute()),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF4A90D9),
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF4A90D9).withValues(alpha: 0.35),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person_add_alt_1_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // Scan QR button
          // SizedBox(
          //   width: double.infinity,
          //   child: OutlinedButton.icon(
          //     onPressed: () {/* navigate to QR scan */},
          //     icon: const Icon(
          //       Icons.qr_code_scanner_rounded,
          //       size: 18,
          //       color: Color(0xFF4A90D9),
          //     ),
          //     label: Text(
          //       LocaleKeys.friend_scan_qr.tr(),
          //       style: TextStyle(
          //         fontSize: 14,
          //         fontWeight: FontWeight.w600,
          //         color: Color(0xFF4A90D9),
          //       ),
          //     ),
          //     style: OutlinedButton.styleFrom(
          //       padding: const EdgeInsets.symmetric(vertical: 13),
          //       backgroundColor: const Color(0xFFE8F4FD),
          //       side: const BorderSide(color: Color(0xFFB3D9F5)),
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(12),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

