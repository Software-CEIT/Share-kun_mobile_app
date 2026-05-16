import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/constants/app_colors.dart';
import 'package:share_kun/core/constants/enums/data_status.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:share_kun/features/auth/presentation/widget/field_label_widget.dart';
import 'package:share_kun/features/auth/presentation/widget/input_field_widget.dart';
import 'package:share_kun/generated/assets.gen.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class RegisterPage extends StatefulWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: this,
    );
  }

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmCtrl = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirm = true;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _passwordCtrl.dispose();
    _confirmCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.user != null) {
          context.router.push(HomeRoute());
        } else if (state.status == DataStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Registration failed')),
          );
        }
      },
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final isLoading = state.status == DataStatus.loading;
          return Scaffold(
            backgroundColor: AppColors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(37),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // ── Logo ──────────────────────────────────────────────────
                      Center(child: Assets.icon.shareKunIcon.svg()),
                      const SizedBox(height: 24),

                      // ── Title ─────────────────────────────────────────────────
                      Text(
                        LocaleKeys.auth_register_title.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A2E),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        LocaleKeys.auth_register_subtitle.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6B7280),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 28),

                      // ── Full Name ──────────────────────────────────────────────
                      FieldLabelWidget(LocaleKeys.auth_name.tr()),
                      const SizedBox(height: 8),
                      InputFieldWidget(
                        controller: _nameCtrl,
                        hint: LocaleKeys.auth_name_hint.tr(),
                        prefixIcon: Icons.person_outline_rounded,
                      ),
                      const SizedBox(height: 16),

                      // ── Phone ──────────────────────────────────────────────────
                      FieldLabelWidget(LocaleKeys.phone.tr()),
                      const SizedBox(height: 8),
                      InputFieldWidget(
                        controller: _phoneCtrl,
                        hint: LocaleKeys.auth_phone_hint.tr(),
                        prefixIcon: Icons.phone_outlined,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),

                      // ── Password ───────────────────────────────────────────────
                      FieldLabelWidget(LocaleKeys.password.tr()),
                      const SizedBox(height: 8),
                      InputFieldWidget(
                        controller: _passwordCtrl,
                        hint: LocaleKeys.auth_password_hint.tr(),
                        prefixIcon: Icons.lock_outline_rounded,
                        obscureText: _obscurePassword,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscurePassword
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 20,
                            color: const Color(0xFF9CA3AF),
                          ),
                          onPressed: () =>
                              setState(() => _obscurePassword = !_obscurePassword),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // ── Confirm Password ───────────────────────────────────────
                      FieldLabelWidget(LocaleKeys.auth_confirm_password.tr()),
                      const SizedBox(height: 8),
                      InputFieldWidget(
                        controller: _confirmCtrl,
                        hint: LocaleKeys.auth_confirm_password_hint.tr(),
                        prefixIcon: Icons.lock_outline_rounded,
                        obscureText: _obscureConfirm,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureConfirm
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            size: 20,
                            color: const Color(0xFF9CA3AF),
                          ),
                          onPressed: () =>
                              setState(() => _obscureConfirm = !_obscureConfirm),
                        ),
                      ),
                      const SizedBox(height: 28),

                      // ── Create Account button ──────────────────────────────────
                      ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () => context.read<AuthCubit>().register(name: _nameCtrl.text, phone: _phoneCtrl.text, password: _passwordCtrl.text),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A90D9),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
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
                                LocaleKeys.auth_create_account.tr(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                      ),
                      const SizedBox(height: 24),

                      // ── Already have account ───────────────────────────────────
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.already_have_account.tr(),
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                          TextButton(
                            onPressed: () => context.router.pop(),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              LocaleKeys.sign_in.tr(),
                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF4A90D9),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
