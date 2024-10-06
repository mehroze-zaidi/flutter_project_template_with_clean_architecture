import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static bool _isDarkMode = false;

  static void updateTheme(BuildContext context) {
    _isDarkMode = Theme.of(context).brightness == Brightness.dark;
  }

  static bool get isDarkMode => _isDarkMode;

  static final Color primaryColor =
      _isDarkMode ? Colors.black : const Color(0xffb3bd84);



  static const Color blackTxtColor = Color(0xff000000);
  static const Color whiteTxtColor = Color(0xffffffff);
}
