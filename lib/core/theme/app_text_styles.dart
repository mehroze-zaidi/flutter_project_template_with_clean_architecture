import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';

class AppTextStyles {
  // Function to generate dynamic text style with responsive font sizes
  static TextStyle getTextStyle({
    required double fontSize,
    required FontWeight? fontWeight,
    required Color color,
    double opacity = 1.0,
    double letterSpacing = 0.0,
    String fontFamily = 'Poppins',
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color.withValues(alpha: opacity),
      letterSpacing: letterSpacing,
      fontFamily: fontFamily,
    );
  }

  // Heading 1 - 36 Bold
  static TextStyle heading1 = getTextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: AppColors.baseBlackColor,
  );

  // Heading 2 - 28 Bold
  static TextStyle heading2 = getTextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.baseBlackColor,
  );

  // SubHeading 1 - 20 Semibold
  static TextStyle subHeading1 = getTextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.baseBlackColor,
  );

  // SubHeading 2 - 18 Semibold
  static TextStyle subHeading2 = getTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.baseBlackColor,
  );

  // Body 1 - 16 Regular
  static TextStyle body1 = getTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );

  // Body 2 - 14 Regular
  static TextStyle body2 = getTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );

  // Navlinks1 - 16 Regular
  static TextStyle navlinks1 = getTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );

  // Navlinks2 - 14 Regular
  static TextStyle navlinks2 = getTextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );

  // CTA1 - 18 Regular
  static TextStyle cta1 = getTextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );

  // CTA2 - 16 Regular
  static TextStyle cta2 = getTextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.baseBlackColor,
  );
}
