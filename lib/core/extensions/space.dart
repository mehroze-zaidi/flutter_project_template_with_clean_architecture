import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



extension DoubleExtension on num {
  double get flexibleHeight => ScreenUtil().setHeight(this);
   double get flexibleWidth => ScreenUtil().setWidth(this);
  // double get fontSize => ScreenUtil().setSp(this);
  // //Size get size => ScreenUtil().uiSize;
  // double get screenW => ScreenUtil().screenWidth * (this / 100);
  // double get screenH => ScreenUtil().screenHeight * (this / 100);
  // double get radius => ScreenUtil()(r);

  // Use to add horizontal space
  SizedBox get horizontalSpace => SizedBox(width: convertToDouble(this));

  SizedBox get responsiveHorizontalSpace =>
      SizedBox(width: convertToDouble(this).w);

  SizedBox get responsiveVerticalSpace =>
      SizedBox(width: convertToDouble(this).h);

  // Use to add vertical space
  SizedBox get verticalSpace => SizedBox(height: convertToDouble(this));
}

double convertToDouble(num value) {
  return double.parse(value.toString());
}
