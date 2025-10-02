import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/app_theme.dart';
import '../../core/navigation/app_routes.dart';
import '../../l10n/generated/app_localizations.dart';

class FedmanAdminApp extends StatefulWidget {
  const FedmanAdminApp({super.key});

  @override
  State<FedmanAdminApp> createState() => _FedmanAdminAppState();
}

class _FedmanAdminAppState extends State<FedmanAdminApp> {


  @override
  void initState() {

    super.initState();
  }

// the setState function here is a must to add
  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }



  @override
  void dispose() {
    //AppLanguageService().removeListener(_onLanguageChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(

        title: 'Fedman admin',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        routerConfig: AppRoutes.router,
      ),
    );
  }
}