import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/user_search_entity.dart';
import 'package:share_kun/features/friend/presentation/cubit/add_friend_cubit.dart';

@RoutePage()
class AddFriendPage extends StatefulWidget implements AutoRouteWrapper {
  const AddFriendPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddFriendCubit>(),
      child: this,
    );
  }

  @override
  State<AddFriendPage> createState() => _AddFriendPageState();
}

class _AddFriendPageState extends State<AddFriendPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final _phoneCtrl = TextEditingController();
  final _searchCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _phoneCtrl.dispose();
    _searchCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddFriendCubit, AddFriendState>(
      listenWhen: (prev, curr) => prev.addStatus != curr.addStatus,
      listener: (context, state) {
        if (state.addStatus == DataStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage ?? 'Failed to add contact'),
            ),
          );
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F0),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.chevron_left_rounded,
                size: 28, color: Color(0xFF1A1A2E)),
            onPressed: () => context.router.maybePop(),
          ),
          title: const Text(
            'Add Friend',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1A1A2E),
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            labelColor: const Color(0xFF4A90D9),
            unselectedLabelColor: const Color(0xFF6B7280),
            indicatorColor: const Color(0xFF4A90D9),
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            tabs: const [
              Tab(text: 'By Phone'),
              Tab(text: 'Search'),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            _ByPhoneTab(phoneCtrl: _phoneCtrl),
            _SearchTab(searchCtrl: _searchCtrl),
          ],
        ),
      ),
    );
  }
}

// ── By Phone Tab ───────────────────────────────────────────────────────────────

class _ByPhoneTab extends StatelessWidget {
  final TextEditingController phoneCtrl;
  const _ByPhoneTab({required this.phoneCtrl});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddFriendCubit>();
    return BlocBuilder<AddFriendCubit, AddFriendState>(
      buildWhen: (prev, curr) =>
          prev.searchStatus != curr.searchStatus ||
          prev.foundUser != curr.foundUser ||
          prev.addedUserId != curr.addedUserId,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.04),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: phoneCtrl,
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(
                            fontSize: 14, color: Color(0xFF1A1A2E)),
                        decoration: InputDecoration(
                          hintText: 'e.g. 020XXXXXXXX',
                          hintStyle: const TextStyle(
                              color: Color(0xFF9CA3AF), fontSize: 14),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        onSubmitted: (_) => cubit.findByPhone(phoneCtrl.text),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: state.searchStatus == DataStatus.loading
                          ? null
                          : () => cubit.findByPhone(phoneCtrl.text),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4A90D9),
                        disabledBackgroundColor: const Color(0xFFCBD5E1),
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: state.searchStatus == DataStatus.loading
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Find',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              if (state.searchStatus == DataStatus.success &&
                  state.foundUser != null)
                _UserCard(
                  user: state.foundUser!,
                  isAdded: state.addedUserId == state.foundUser!.id,
                  isAdding: state.addStatus == DataStatus.loading,
                  onAdd: () => cubit.addContact(state.foundUser!),
                )
              else if (state.searchStatus == DataStatus.success &&
                  state.foundUser == null)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Column(
                      children: [
                        const Icon(Icons.person_search_rounded,
                            size: 56, color: Color(0xFFCBD5E1)),
                        const SizedBox(height: 12),
                        Text(
                          state.errorMessage ?? 'No user found',
                          style: const TextStyle(
                              color: Color(0xFF6B7280), fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                )
              else if (state.searchStatus == DataStatus.failure)
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      state.errorMessage ?? 'Something went wrong',
                      style: const TextStyle(
                          color: Color(0xFFEF4444), fontSize: 14),
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}

// ── Search Tab ─────────────────────────────────────────────────────────────────

class _SearchTab extends StatelessWidget {
  final TextEditingController searchCtrl;
  const _SearchTab({required this.searchCtrl});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddFriendCubit>();
    return BlocBuilder<AddFriendCubit, AddFriendState>(
      buildWhen: (prev, curr) =>
          prev.searchStatus != curr.searchStatus ||
          prev.searchResults != curr.searchResults ||
          prev.addedUserId != curr.addedUserId ||
          prev.addStatus != curr.addStatus,
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: searchCtrl,
                  style: const TextStyle(
                      fontSize: 14, color: Color(0xFF1A1A2E)),
                  decoration: InputDecoration(
                    hintText: 'Search by name...',
                    hintStyle: const TextStyle(
                        color: Color(0xFF9CA3AF), fontSize: 14),
                    prefixIcon: const Icon(Icons.search_rounded,
                        color: Color(0xFF9CA3AF), size: 20),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  onSubmitted: (v) => cubit.searchUsers(v),
                  onChanged: (v) {
                    if (v.trim().isEmpty) cubit.searchUsers('');
                  },
                ),
              ),
            ),

            if (state.searchStatus == DataStatus.loading)
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: CircularProgressIndicator(color: Color(0xFF4A90D9)),
              )
            else if (state.searchResults.isEmpty &&
                state.searchStatus == DataStatus.success)
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text(
                  'No users found',
                  style: TextStyle(color: Color(0xFF6B7280), fontSize: 14),
                ),
              )
            else
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                  itemCount: state.searchResults.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, i) {
                    final user = state.searchResults[i];
                    return _UserCard(
                      user: user,
                      isAdded: state.addedUserId == user.id,
                      isAdding: state.addStatus == DataStatus.loading &&
                          state.addedUserId == null,
                      onAdd: () => cubit.addContact(user),
                    );
                  },
                ),
              ),
          ],
        );
      },
    );
  }
}

// ── User Card ──────────────────────────────────────────────────────────────────

class _UserCard extends StatelessWidget {
  final UserSearchEntity user;
  final bool isAdded;
  final bool isAdding;
  final VoidCallback onAdd;

  const _UserCard({
    required this.user,
    required this.isAdded,
    required this.isAdding,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xFF4A90D9).withValues(alpha: 0.15),
            child: Text(
              user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4A90D9),
              ),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1A2E),
                  ),
                ),
                if (user.phone != null) ...[
                  const SizedBox(height: 2),
                  Text(
                    user.phone!,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 36,
            child: isAdded
                ? const Icon(Icons.check_circle_rounded,
                    color: Color(0xFF22C55E), size: 28)
                : ElevatedButton(
                    onPressed: isAdding ? null : onAdd,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A90D9),
                      disabledBackgroundColor: const Color(0xFFCBD5E1),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: isAdding
                        ? const SizedBox(
                            width: 14,
                            height: 14,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                  ),
          ),
        ],
      ),
    );
  }
}
