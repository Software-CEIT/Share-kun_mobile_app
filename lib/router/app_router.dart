import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:share_kun/features/addDebt/domain/entities/bank_account_entity.dart';
import 'package:share_kun/features/auth/presentation/page/login_page.dart';
import 'package:share_kun/features/auth/presentation/page/register_page.dart';
import 'package:share_kun/features/auth/presentation/page/otp_page.dart';
import 'package:share_kun/features/addDebt/presentation/page/add_bank_account_form_page.dart';
import 'package:share_kun/features/addDebt/presentation/page/add_bank_account_page.dart';
import 'package:share_kun/features/addDebt/presentation/page/add_debt_page.dart';
import 'package:share_kun/features/addDebt/presentation/page/select_bank_account_page.dart';
import 'package:share_kun/features/friend/presentation/page/add_friend_page.dart';
import 'package:share_kun/features/friend/presentation/page/friend_page.dart';
import 'package:share_kun/features/home/domain/entities/debt_activity_entities.dart';
import 'package:share_kun/features/home/presentation/page/home_page.dart';
import 'package:share_kun/features/home/presentation/page/debt_detail_page.dart';
import 'package:share_kun/features/main_navigation/presentation/page/main_navigation_page.dart';
import 'package:share_kun/features/profile/presentation/page/edit_profile_page.dart';
import 'package:share_kun/features/profile/presentation/page/profile_page.dart';
import 'package:share_kun/features/profile/presentation/page/select_language_page.dart';
import 'package:share_kun/router/guards/authentication_guard.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  generateForDir: ['lib/features', 'lib/core/presentation/widgets'],
)
class AppRouter extends RootStackRouter {
  final AuthGuard authGuard;

  AppRouter({required this.authGuard});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page, initial: true),
    AutoRoute(
      page: MainNavigationRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: FriendRoute.page),
        AutoRoute(page: AddDebtRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: AddBankAccountRoute.page),
    AutoRoute(page: AddBankAccountFormRoute.page),
    AutoRoute(page: SelectBankAccountRoute.page),
    AutoRoute(page: SelectLanguageRoute.page),
    AutoRoute(page: EditProfileRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: OtpRoute.page),
    AutoRoute(page: AddFriendRoute.page),
    AutoRoute(page: DebtDetailRoute.page),
  ];
}
