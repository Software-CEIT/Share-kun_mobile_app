import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:share_kun/core/constants/app_colors.dart';
import 'package:share_kun/core/di/injectable.dart';
import 'package:share_kun/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: getIt<AppRouter>().config(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightGray,
        fontFamily: 'Poppins',
        textTheme: ThemeData.light().textTheme.apply(fontFamily: 'Poppins'),
      ),
    );
  }
}
