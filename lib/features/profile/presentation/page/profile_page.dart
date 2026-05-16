import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>()..getBankAccountList(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state.isLoggedOut) {
          context.router.replaceAll([const LoginRoute()]);
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F0),
        body: Stack(
          children: [
            // Blue header background
            Container(height: 240, color: const Color(0xFF4A90D9)),

            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ── Profile header ─────────────────────────────────────────
                    BlocBuilder<ProfileCubit, ProfileState>(
                      buildWhen: (previous, current) =>
                          previous.profile != current.profile,
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 32, bottom: 24),
                          child: Column(
                            children: [
                              // Avatar + camera badge
                              Stack(
                                children: [
                                  Container(
                                    width: 90,
                                    height: 90,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFCBD5E1),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.person_rounded,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      width: 28,
                                      height: 28,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF1A1A2E),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.camera_alt_rounded,
                                        size: 15,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 14),
                              Text(
                                state.profile?.name ?? '',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                LocaleKeys.profile_member_since.tr(
                                  namedArgs: {
                                    'date': state.profile?.memberSince ?? '',
                                  },
                                ),
                                style: const TextStyle(
                                  fontSize: 13,
                                  color: Colors.white70,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    // ── Settings cards ─────────────────────────────────────────
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF5F5F0),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 20, 16, 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ── Account Settings ────────────────────────────────
                            _SectionCard(
                              label: LocaleKeys.profile_account_settings.tr(),
                              items: [
                                _SettingsRow(
                                  icon: Icons.person_outline_rounded,
                                  label: LocaleKeys.profile_edit_profile.tr(),
                                  onTap: () => context.router.push(
                                    const EditProfileRoute(),
                                  ),
                                ),
                                // _SettingsRow(
                                //   icon: Icons.qr_code_2_rounded,
                                //   label: LocaleKeys.profile_my_qr_code.tr(),
                                //   onTap: () {},
                                // ),
                                BlocBuilder<ProfileCubit, ProfileState>(
                                  buildWhen: (previous, current) => 
                                    previous.bankAccounts != current.bankAccounts,
                                  builder: (context, state) {
                                    return _SettingsRow(
                                      icon: Icons.account_balance_rounded,
                                      label: LocaleKeys.profile_bank_account
                                          .tr(),
                                      onTap: () {
                                        if (state.bankAccounts.isNotEmpty) {
                                          context.router.push(
                                            SelectBankAccountRoute(
                                              bankAccounts: state.bankAccounts,
                                            ),
                                          );
                                        } else {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                state.errorMessage ??
                                                    'something went wrong',
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                      showDivider: false,
                                    );
                                  },
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // ── Preferences ─────────────────────────────────────
                            _SectionCard(
                              label: LocaleKeys.profile_preferences.tr(),
                              items: [
                                _SettingsRow(
                                  icon: Icons.language_rounded,
                                  label: LocaleKeys.profile_language.tr(),
                                  onTap: () => context.router.push(
                                    const SelectLanguageRoute(),
                                  ),
                                  showDivider: false,
                                ),
                              ],
                            ),

                            const SizedBox(height: 16),

                            // ── Logout button ────────────────────────────────────
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton.icon(
                                onPressed: () =>
                                    context.read<ProfileCubit>().logout(),
                                icon: const Icon(
                                  Icons.logout_rounded,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                label: Text(
                                  LocaleKeys.logout.tr(),
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFEF4444),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Section Card ──────────────────────────────────────────────────────────────

class _SectionCard extends StatelessWidget {
  final String label;
  final List<Widget> items;

  const _SectionCard({required this.label, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 10),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: Color(0xFF9CA3AF),
              letterSpacing: 0.8,
            ),
          ),
        ),
        Container(
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
          child: Column(children: items),
        ),
      ],
    );
  }
}

// ── Settings Row ──────────────────────────────────────────────────────────────

class _SettingsRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool showDivider;

  const _SettingsRow({
    required this.icon,
    required this.label,
    required this.onTap,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                // Icon box
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEBF4FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(icon, size: 20, color: const Color(0xFF4A90D9)),
                ),
                const SizedBox(width: 14),
                // Label
                Expanded(
                  child: Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A1A2E),
                    ),
                  ),
                ),
                // Chevron
                const Icon(
                  Icons.chevron_right_rounded,
                  size: 22,
                  color: Color(0xFF9CA3AF),
                ),
              ],
            ),
          ),
        ),
        if (showDivider)
          const Divider(
            height: 1,
            indent: 68,
            endIndent: 16,
            color: Color(0xFFF3F4F6),
          ),
      ],
    );
  }
}
