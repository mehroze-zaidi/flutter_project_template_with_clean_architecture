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

  static const errorColor = Color(0xffea0000);
  static const successColor = Color(0xff71cd4d);
  static const textfieldLightSurfaceColor = Color(0xfff4f4f4);

  static const hintLightBlackTxtColor = Color(0xFFE7E7E7);

  static const Color blackTxtColor = Color(0xff000000);
  static const Color whiteTxtColor = Color(0xffffffff);
  static const Color white = Color(0xffffffff);
}
