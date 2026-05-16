import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/core/constants/app_colors.dart';
import 'package:share_kun/generated/assets.gen.dart';
import 'package:share_kun/generated/locale_keys.g.dart';
import 'package:share_kun/router/app_router.dart';

@RoutePage()
class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      key: ValueKey(context.locale),
      routes: const [
        HomeRoute(),
        FriendRoute(),
        AddDebtRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildNavItem(
                      index: 0,
                      icon: Assets.icon.homeActive2,
                      label: LocaleKeys.home_home.tr(),
                      tabsRouter: tabsRouter,
                    ),
                    _buildNavItem(
                      index: 1,
                      icon: Assets.icon.friendInactive,
                      label: LocaleKeys.nav_friends.tr(),
                      tabsRouter: tabsRouter,
                    ),
                    _buildNavItem(
                      index: 2,
                      icon: Assets.icon.addDebtInactive,
                      label: LocaleKeys.nav_add_debt.tr(),
                      tabsRouter: tabsRouter,
                    ),
                    _buildNavItem(
                      index: 3,
                      icon: Assets.icon.newProfileInactive,
                      activeIcon: Assets.icon.newProfileActive,
                      label: LocaleKeys.profile_profile.tr(),
                      tabsRouter: tabsRouter,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildNavItem({
    required int index,
    required SvgGenImage icon,
    SvgGenImage? activeIcon,
    required String label,
    required TabsRouter tabsRouter,
  }) {
    final isSelected = tabsRouter.activeIndex == index;
    final color = isSelected ? AppColors.primary : AppColors.softGray;

    final Widget iconWidget = (isSelected && activeIcon != null)
        ? activeIcon.svg()
        : icon.svg(
            colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          );

    return GestureDetector(
      onTap: () => tabsRouter.setActiveIndex(index),
      behavior: HitTestBehavior.opaque,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          iconWidget,
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
