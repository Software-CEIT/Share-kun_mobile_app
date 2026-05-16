import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/debt_typr_enum.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_debt_cubit.dart';
import 'package:share_kun/features/addDebt/presentation/util/bank_logo_util.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

class BottomActions extends StatelessWidget {
  final bool canSave;
  final bool hasBankAccount;

  const BottomActions({
    super.key,
    required this.canSave,
    required this.hasBankAccount,
  });

  Future<void> _handleSavePressed(BuildContext context, AddDebtCubit cubit) async {
    final state = cubit.state;
    if (state.direction == DebtDirection.owesMe) {
      final hasSelected = state.selectedBankAccountId != null &&
          state.bankAccounts.any((a) => a.id == state.selectedBankAccountId);
      if (!hasSelected) {
        await _showNoBankAccountDialog(context, cubit);
        return;
      }
    }
    if (context.mounted) _showBankConfirmDialog(context, cubit);
  }

  Future<void> _showNoBankAccountDialog(BuildContext context, AddDebtCubit cubit) async {
    final state = cubit.state;
    final go = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text(
          'No Bank Account Selected',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        content: const Text(
          'Please select a bank account to receive payment.',
          style: TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel', style: TextStyle(color: Color(0xFF6B7280))),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(ctx, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF4A90D9),
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text('Select Account', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );

    if (go != true || !context.mounted) return;

    if (state.bankAccounts.isEmpty) {
      await context.router.push(const AddBankAccountRoute());
    } else {
      final selectedId = await context.router.push<String>(
        SelectBankAccountRoute(bankAccounts: state.bankAccounts),
      );
      if (selectedId != null && context.mounted) {
        cubit.selectBankAccount(selectedId);
      }
    }
  }

  void _showBankConfirmDialog(BuildContext context, AddDebtCubit cubit) {
    final state = cubit.state;
    final BankAccountEntity? account = state.bankAccounts.isEmpty
        ? null
        : state.bankAccounts.firstWhere(
            (a) => a.id == state.selectedBankAccountId,
            orElse: () => state.bankAccounts.first,
          );

    showDialog(
      context: context,
      builder: (dialogCtx) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Header ──────────────────────────────────────────
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4A90D9), Color(0xFF2563EB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(
                      Icons.account_balance_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    LocaleKeys.adddebt_bank_confirm_title.tr(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    LocaleKeys.adddebt_bank_confirm_subtitle.tr(),
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white.withValues(alpha: 0.8),
                      height: 1.4,
                    ),
                  ),
                ],
              ),
            ),

            // ── Body ────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Bank account card
                  if (account != null)
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF8FAFF),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: const Color(0xFF4A90D9).withValues(alpha: 0.2),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF4A90D9).withValues(alpha: 0.06),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          // Bank logo
                          Container(
                            width: 52,
                            height: 52,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.08),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(14),
                              child: Image.asset(
                                bankLogo(account.bank),
                                width: 52,
                                height: 52,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 14),

                          // Account details
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  account.bank,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF1A1A2E),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                Text(
                                  account.holderName,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF6B7280),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  account.accountNumber,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xFF6B7280),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Check badge
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Color(0xFF22C55E),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ),

                  const SizedBox(height: 20),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.pop(dialogCtx),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            side: const BorderSide(color: Color(0xFFE2E8F0)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            LocaleKeys.adddebt_cancel.tr(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.pop(dialogCtx);
                            final success = await cubit.saveDebt();
                            if (success && context.mounted) {
                              context.router.replaceAll([const HomeRoute()]);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4A90D9),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Text(
                            LocaleKeys.adddebt_confirm.tr(),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddDebtCubit>();

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Row(
        children: [
          // OutlinedButton.icon(
          //   onPressed: () {
          //     if (hasBankAccount) {
          //       context.router.push(const SelectBankAccountRoute());
          //     } else {
          //       context.router.push(const AddBankAccountRoute());
          //     }
          //   },
          //   icon: const Icon(
          //     Icons.qr_code_rounded,
          //     size: 18,
          //     color: Color(0xFF4A90D9),
          //   ),
          //   label: Text(
          //     LocaleKeys.adddebt_upload_qr.tr(),
          //     style: const TextStyle(
          //       fontSize: 13,
          //       fontWeight: FontWeight.w600,
          //       color: Color(0xFF4A90D9),
          //     ),
          //   ),
          //   style: OutlinedButton.styleFrom(
          //     padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          //     side: const BorderSide(color: Color(0xFF4A90D9)),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(14),
          //     ),
          //   ),
          // ),
          // const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              onPressed: canSave
                  ? () => _handleSavePressed(context, cubit)
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4A90D9),
                disabledBackgroundColor: const Color(0xFFCBD5E1),
                padding: const EdgeInsets.symmetric(vertical: 14),
                elevation: canSave ? 4 : 0,
                shadowColor: const Color(0xFF4A90D9).withValues(alpha: 0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: Text(
                LocaleKeys.adddebt_save_debt.tr(),
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
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
