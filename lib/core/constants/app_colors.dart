import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const errorColor = Color(0xffea0000);
  static const successColor = Color(0xff71cd4d);
  static const textfieldLightSurfaceColor = Color(0xfff4f4f4);

  static const hintLightBlackTxtColor = Color(0xFFE7E7E7);

  static const Color blackTxtColor = Color(0xff000000);
  static const Color whiteTxtColor = Color(0xffffffff);
  static const Color white = Color(0xffffffff);


  static const Color baseWhiteColor = Color(0XFFffffff);
  static const Color bgColor = Color(0XFFEFF0F2);
  static const Color baseBlackColor = Color(0XFF030712);
  static const Color primaryColor = Color(0XFFAD0202);
  static const Color greyColor = Color(0XFF938c8c);
  static const Color positive100Color = Color(0XFFD0F5E1);
  static const Color secondaryColor = Color(0XFF000000);
  static const Color secondary200 = Color(0XFF999999);
  static const Color tertiaryColor = Color(0XFF2958FF);
  static const Color tertiary100 = Color(0XFFD6DFFF);
  static const Color positiveColor = Color(0XFF27BE69);
  static const Color negativeColor = Color(0XFFF2415A);
  static const Color warningColor = Color(0XFFFFBF0F);
  static const Color infoColor = Color(0XFF295BFF);
  static const Color transparentColor = Colors.transparent;
  static const Color neutralColor = Color(0XFF4B4040);
  static const Color neutralBase = Color(0XFF938C8C);
  static const Color neutralBlack = Color(0XFF0C092A);
  static const Color neutral900 = Color(0XFF271A1A);
  static const Color neutral50 = Color(0XFFF8F7F7);
  static const Color neutral200 = Color(0XFFD6D4D4);
  static const Color lightRed = Color(0XFFFFF5F5);

  static const  black26 =  Colors.black26;
}
extension ColorShade on Color {
  /// Lighten the color by [amount] (0.0 to 1.0)
  Color lighten([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    return Color.lerp(this, Colors.white, amount)!;
  }

  /// Darken the color by [amount] (0.0 to 1.0)
  Color darken([double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    return Color.lerp(this, Colors.black, amount)!;
  }
}