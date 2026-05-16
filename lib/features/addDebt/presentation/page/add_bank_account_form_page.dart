import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/addDebt/presentation/cubit/add_bank_account_cubit.dart';
import 'package:share_kun/features/addDebt/presentation/util/bank_logo_util.dart';
import 'package:share_kun/generated/locale_keys.g.dart';

@RoutePage()
class AddBankAccountFormPage extends StatefulWidget
    implements AutoRouteWrapper {
  const AddBankAccountFormPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AddBankAccountCubit>(),
      child: this,
    );
  }

  @override
  State<AddBankAccountFormPage> createState() => _AddBankAccountFormPageState();
}

class _AddBankAccountFormPageState extends State<AddBankAccountFormPage> {
  String? _selectedBank;
  final _accountNumberCtrl = TextEditingController();
  final _holderNameCtrl = TextEditingController();

  bool get _canSave =>
      _selectedBank != null &&
      _accountNumberCtrl.text.trim().isNotEmpty &&
      _holderNameCtrl.text.trim().isNotEmpty;

  @override
  void dispose() {
    _accountNumberCtrl.dispose();
    _holderNameCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddBankAccountCubit, AddBankAccountState>(
      listener: (context, state) {
        if (state.status == DataStatus.success) {
          context.router.maybePop();
        } else if (state.status == DataStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage ?? 'Failed to add bank account'),
            ),
          );
        }
      },
      child: BlocBuilder<AddBankAccountCubit, AddBankAccountState>(
        builder: (context, state) {
          final isLoading = state.status == DataStatus.loading;
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
                LocaleKeys.adddebt_add_bank_title.tr(),
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
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ── Bank Picker ──────────────────────────────────────────
                          _SectionLabel(LocaleKeys.adddebt_select_bank.tr()),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: _BankCard(
                                  name: 'BCEL',
                                  icon: 'BCEL',
                                  isSelected: _selectedBank == 'BCEL',
                                  onTap: () =>
                                      setState(() => _selectedBank = 'BCEL'),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: _BankCard(
                                  name: 'LDB',
                                  icon: 'LDB',
                                  isSelected: _selectedBank == 'LDB',
                                  onTap: () =>
                                      setState(() => _selectedBank = 'LDB'),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // ── Account Number ───────────────────────────────────────
                          _SectionLabel(
                              LocaleKeys.adddebt_account_number.tr()),
                          const SizedBox(height: 10),
                          _InputField(
                            controller: _accountNumberCtrl,
                            hint: LocaleKeys.adddebt_account_number_hint.tr(),
                            keyboardType: TextInputType.number,
                            onChanged: (_) => setState(() {}),
                          ),

                          const SizedBox(height: 20),

                          // ── Account Holder Name ──────────────────────────────────
                          _SectionLabel(
                              LocaleKeys.adddebt_account_holder.tr()),
                          const SizedBox(height: 10),
                          _InputField(
                            controller: _holderNameCtrl,
                            hint:
                                LocaleKeys.adddebt_account_holder_hint.tr(),
                            textCapitalization: TextCapitalization.words,
                            onChanged: (_) => setState(() {}),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ── Save Button ────────────────────────────────────────────────
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (_canSave && !isLoading)
                            ? () => context
                                .read<AddBankAccountCubit>()
                                .createBankAccount(
                                  bank: _selectedBank!,
                                  accountNumber:
                                      _accountNumberCtrl.text.trim(),
                                  holderName: _holderNameCtrl.text.trim(),
                                )
                            : null,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A90D9),
                          disabledBackgroundColor: const Color(0xFFCBD5E1),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                LocaleKeys.adddebt_save_bank.tr(),
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
}

// ── Section Label ─────────────────────────────────────────────────────────────

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: Color(0xFF6B7280),
      ),
    );
  }
}

// ── Input Field ───────────────────────────────────────────────────────────────

class _InputField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final ValueChanged<String> onChanged;

  const _InputField({
    required this.controller,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        controller: controller,
        keyboardType: keyboardType,
        textCapitalization: textCapitalization,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 14, color: Color(0xFF1A1A2E)),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle:
              const TextStyle(color: Color(0xFF9CA3AF), fontSize: 14),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}

// ── Bank Card ─────────────────────────────────────────────────────────────────

class _BankCard extends StatelessWidget {
  final String name;
  final String icon;
  final bool isSelected;
  final VoidCallback onTap;

  const _BankCard({
    required this.name,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFEBF4FF) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? Border.all(color: const Color(0xFF4A90D9), width: 2)
              : Border.all(color: const Color(0xFFE5E7EB)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipOval(
              child: SizedBox(
                width: 48,
                height: 48,
                child: Image.asset(bankLogo(icon)),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: isSelected
                    ? const Color(0xFF4A90D9)
                    : const Color(0xFF1A1A2E),
              ),
            ),
            if (isSelected) ...[
              const SizedBox(height: 6),
              const Icon(
                Icons.check_circle_rounded,
                color: Color(0xFF4A90D9),
                size: 18,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
