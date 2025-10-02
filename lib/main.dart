import 'package:easy_localization/easy_localization.dart';
import 'package:fedman_admin_app/core/utils/managers/google_signin_manager.dart';
import 'package:flutter/material.dart';

import 'package:fedman_admin_app/presentation/app/fedman_admin.dart';

import 'core/di/injection.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

   await setupDependencyInjection();
  runApp(EasyLocalization(    supportedLocales: const [Locale('en', 'US'), Locale('it', 'IT')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: const Locale('en', 'US'),child:  const FedmanAdminApp()));
}



