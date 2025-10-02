import 'package:flutter/material.dart';
import 'package:fedman_admin_app/core/constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static String fontFamily = "Cairo";
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(primary: AppColors.primaryColor),

    scaffoldBackgroundColor: AppColors.neutral50,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      titleTextStyle: const TextStyle(color: AppColors.blackTxtColor),
    ),
dividerTheme: DividerThemeData(color: AppColors.neutral200,endIndent: 20,indent: 20),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackTxtColor,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        color: AppColors.blackTxtColor,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        color: AppColors.blackTxtColor,
        fontFamily: fontFamily,
      ),
      labelLarge:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      labelMedium:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      labelSmall:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      displayLarge:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      displayMedium:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      displaySmall:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      headlineLarge:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      headlineMedium:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      headlineSmall:
          TextStyle(color: AppColors.blackTxtColor, fontFamily: fontFamily),
      titleLarge:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      titleMedium:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
      titleSmall:
          TextStyle(fontFamily: fontFamily, color: AppColors.blackTxtColor),
    ),
    // Add more customizations as needed
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    scaffoldBackgroundColor: Colors.grey[850],
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(color: AppColors.whiteTxtColor),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.whiteTxtColor,
        fontFamily: fontFamily,
      ),
      bodyMedium: TextStyle(
        color: AppColors.whiteTxtColor,
        fontFamily: fontFamily,
      ),
      bodySmall: TextStyle(
        color: AppColors.whiteTxtColor,
        fontFamily: fontFamily,
      ),
      labelLarge:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      labelMedium:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      labelSmall:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      displayLarge:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      displayMedium:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      displaySmall:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      headlineLarge:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      headlineMedium:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      headlineSmall:
      TextStyle(color: AppColors.whiteTxtColor, fontFamily: fontFamily),
      titleLarge:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      titleMedium:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
      titleSmall:
      TextStyle(fontFamily: fontFamily, color: AppColors.whiteTxtColor),
    ),
    // Add more customizations as needed
  );
}
