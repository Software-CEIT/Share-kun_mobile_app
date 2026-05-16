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
import 'package:share_kun/features/auth/presentation/widget/or_divider_widget.dart';
import 'package:share_kun/features/auth/presentation/widget/social_button_widget.dart';
import 'package:share_kun/generated/assets.gen.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: this,
    );
  }

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.status == DataStatus.success) {
          context.router.replace(const MainNavigationRoute());
        } else if (state.status == DataStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessage ?? 'Login failed')),
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
                      // ── App Logo ───────────────────────────────────────────────
                      Center(child: Assets.icon.shareKunIcon.svg()),
                      const SizedBox(height: 24),

                      // ── Welcome title ──────────────────────────────────────────
                      Text(
                        LocaleKeys.welcome.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1A1A2E),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        LocaleKeys.auth_login_subtitle.tr(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF6B7280),
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 28),

                      // ── phone field ────────────────────────────────────────────
                      FieldLabelWidget(LocaleKeys.auth_phone_or_username.tr()),
                      const SizedBox(height: 8),
                      InputFieldWidget(
                        controller: _emailCtrl,
                        hint: LocaleKeys.auth_phone_hint.tr(),
                        prefixIcon: Icons.person_outline_rounded,
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),

                      // ── Password field ─────────────────────────────────────────
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
                      const SizedBox(height: 8),

                      // ── Forgot password ────────────────────────────────────────
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: Text(
                            LocaleKeys.forgot_password.tr(),
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF4A90D9),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // ── Sign In button ─────────────────────────────────────────
                      ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () => context.read<AuthCubit>().login(
                                  phone: _emailCtrl.text,
                                  password: _passwordCtrl.text,
                                ),
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
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    LocaleKeys.sign_in.tr(),
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Icon(Icons.login_rounded,
                                      color: Colors.white, size: 20),
                                ],
                              ),
                      ),
                      const SizedBox(height: 24),

                      // ── Or continue with ───────────────────────────────────────
                      OrDividerWidget(label: LocaleKeys.auth_or_continue_with.tr()),
                      const SizedBox(height: 16),

                      // ── Social buttons ─────────────────────────────────────────
                      SocialButtonWidget(
                        badge: Assets.icon.facebookIcon.svg(width: 28, height: 28),
                        label: LocaleKeys.auth_sign_in_google.tr(),
                        onTap: () {},
                      ),
                      const SizedBox(height: 12),
                      SocialButtonWidget(
                        badge: Assets.icon.googleIcon.svg(width: 22, height: 21),
                        label: LocaleKeys.auth_sign_in_facebook.tr(),
                        onTap: () {},
                      ),
                      const SizedBox(height: 24),

                      // ── Sign Up link ───────────────────────────────────────────
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            LocaleKeys.dont_have_account.tr(),
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF6B7280),
                            ),
                          ),
                          TextButton(
                            onPressed: () => context.router.push(const RegisterRoute()),
                            style: TextButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: Text(
                              LocaleKeys.sign_up.tr(),
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
