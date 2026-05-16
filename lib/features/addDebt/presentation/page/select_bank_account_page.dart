import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_bank_account_cubit.dart';
import 'package:share_kun/features/addDebt/presentation/util/bank_logo_util.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class SelectBankAccountPage extends StatefulWidget
    implements AutoRouteWrapper {
  final List<BankAccountEntity> bankAccounts;

  const SelectBankAccountPage({
    super.key,
    required this.bankAccounts,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddBankAccountCubit>(),
      child: this,
    );
  }

  @override
  State<SelectBankAccountPage> createState() => _SelectBankAccountPageState();
}

class _SelectBankAccountPageState extends State<SelectBankAccountPage> {
  int _selectedIndex = 0;
  late List<BankAccountEntity> _accounts;
  String? _pendingDeleteId;

  @override
  void initState() {
    super.initState();
    _accounts = List.of(widget.bankAccounts);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AddBankAccountCubit>().loadAccounts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddBankAccountCubit, AddBankAccountState>(
      listenWhen: (prev, curr) =>
          prev.status != curr.status || prev.loadStatus != curr.loadStatus,
      listener: (context, state) {
        if (state.loadStatus == DataStatus.success) {
          setState(() {
            _accounts = List.of(state.accounts);
            if (_selectedIndex >= _accounts.length && _accounts.isNotEmpty) {
              _selectedIndex = _accounts.length - 1;
            }
          });
        }
        if (state.status == DataStatus.success && _pendingDeleteId != null) {
          setState(() {
            _accounts.removeWhere((a) => a.id == _pendingDeleteId);
            if (_selectedIndex >= _accounts.length && _accounts.isNotEmpty) {
              _selectedIndex = _accounts.length - 1;
            }
            _pendingDeleteId = null;
          });
        } else if (state.status == DataStatus.failure) {
          _pendingDeleteId = null;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage ?? 'Failed to delete bank account'),
            ),
          );
        }
      },
      child: BlocBuilder<AddBankAccountCubit, AddBankAccountState>(
        builder: (context, state) {
          final cubit = context.read<AddBankAccountCubit>();
          return Scaffold(
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
              title: Text(
                LocaleKeys.adddebt_select_bank_title.tr(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF1A1A2E),
                ),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () =>
                          context.read<AddBankAccountCubit>().loadAccounts(),
                      child: ListView(
                        padding: const EdgeInsets.all(16),
                        children: [
                          ..._accounts.asMap().entries.map((entry) {
                            final i = entry.key;
                            final account = entry.value;
                            final isDeleting = state.deletingId == account.id;
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: _AccountCard(
                                account: account,
                                isSelected: _selectedIndex == i,
                                isDeleting: isDeleting,
                                onTap: () => setState(() => _selectedIndex = i),
                                onDelete: () => _confirmDelete(context, account),
                              ),
                            );
                          }),

                          const SizedBox(height: 4),

                          _AddNewCard(
                            onTap: () => context.router
                                .push(const AddBankAccountFormRoute()),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          context.router.pop(_accounts[_selectedIndex].id);
                          cubit.saveBankAccountId(_accounts[_selectedIndex].id);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A90D9),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: Text(
                          LocaleKeys.adddebt_confirm_selection.tr(),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _confirmDelete(BuildContext context, BankAccountEntity account) {
    final cubit = context.read<AddBankAccountCubit>();
    showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Delete Bank Account'),
        content: Text(
          'Delete ${account.bank} account ending in ${account.maskedNumber}?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text(
              'Delete',
              style: TextStyle(color: Color(0xFFEF4444)),
            ),
          ),
        ],
      ),
    ).then((confirmed) {
      if (confirmed == true && mounted) {
        _pendingDeleteId = account.id;
        cubit.deleteBankAccount(account.id);
      }
    });
  }
}

// ── Account Card ──────────────────────────────────────────────────────────────

class _AccountCard extends StatelessWidget {
  final BankAccountEntity account;
  final bool isSelected;
  final bool isDeleting;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const _AccountCard({
    required this.account,
    required this.isSelected,
    required this.isDeleting,
    required this.onTap,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? Border.all(color: const Color(0xFF4A90D9), width: 1.5)
              : Border.all(color: const Color(0xFFE5E7EB)),
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
            ClipOval(
              child: SizedBox(
                width: 59,
                height: 59,
                child: Image.asset(
                  bankLogo(account.bank),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.accountNumber,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    account.holderName,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6B7280),
                    ),
                  ),
                ],
              ),
            ),

            // Selection indicator
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: isSelected
                  ? const Icon(Icons.check_circle_rounded,
                      key: ValueKey('check'),
                      color: Color(0xFF4A90D9),
                      size: 26)
                  : const Icon(Icons.radio_button_unchecked,
                      key: ValueKey('radio'),
                      color: Color(0xFFCBD5E1),
                      size: 26),
            ),

            const SizedBox(width: 8),

            // Delete button
            SizedBox(
              width: 32,
              height: 32,
              child: isDeleting
                  ? const Padding(
                      padding: EdgeInsets.all(4),
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Color(0xFFEF4444),
                      ),
                    )
                  : IconButton(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.delete_outline_rounded,
                        color: Color(0xFFEF4444),
                        size: 22,
                      ),
                      onPressed: onDelete,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Add New Card ──────────────────────────────────────────────────────────────

class _AddNewCard extends StatelessWidget {
  final VoidCallback onTap;
  const _AddNewCard({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFEBF4FF),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF4A90D9),
            width: 1.5,
            strokeAlign: BorderSide.strokeAlignInside,
          ),
        ),
        child: Column(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: const BoxDecoration(
                color: Color(0xFF4A90D9),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 26),
            ),
            const SizedBox(height: 14),
            Text(
              LocaleKeys.adddebt_add_new_bank.tr(),
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4A90D9),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              LocaleKeys.adddebt_add_new_bank_subtitle.tr(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF6B7280),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
