import 'package:fedman_admin_app/core/extensions/extensions_barrell.dart';
import 'package:fedman_admin_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants/app_colors.dart';

class SnackbarUtils {
  // Show success message
  static void showSuccessToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.green,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Show error message
  static void showErrorToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Show info message
  static void showInfo(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Show warning message
  static void showWarning(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.orange,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  // Show custom snackbar in context
  static void showSnackbar(
    BuildContext context,
    String message, {
    Color? backgroundColor,
    Color? textColor,
    Duration duration = const Duration(seconds: 3),
    SnackBarAction? action,
    bool isError = false,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        width: 200,
        shape: RoundedRectangleBorder(),
        margin: EdgeInsets.all(30),
        content: Text(
          message,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
        backgroundColor: isError
            ? AppColors.errorColor
            : AppColors.positiveColor,
        duration: duration,
        action: action,
      ),
    );
  }

  static void showCustomToast(
    BuildContext context,
    String message, {
    Color? backgroundColor,
    Color? textColor,
    Duration duration = const Duration(seconds: 5),
    bool isError = false,
    IconData? icon,
        double? width,
        ToastGravity? toastGravity
  }) {
    Widget _toast = Container(
      width: width,
      clipBehavior: Clip.antiAlias,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: AppColors.baseBlackColor.withValues(alpha: .3),
            offset: Offset(0, 4),blurRadius: 10
          ),
        ],
        color: AppColors.baseWhiteColor,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 10,color: AppColors.primaryColor,),

            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 0),
                child: Row(mainAxisSize: MainAxisSize.min,children: [
                  Container(
                    height: 30,
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: isError ? AppColors.errorColor : AppColors.positiveColor,
                      ),
                    ),
                    child: Icon(
                      icon ?? (isError ? Icons.close : Icons.check),
                      color: isError ? AppColors.errorColor : AppColors.positiveColor,
                      size: 16.0,
                    ),
                  ),
                  10.horizontalSpace,
                  Flexible(
                    child: Text(
                      message,
                      style: AppTextStyles.navlinks1.copyWith(
                      ),
                    ),
                  ),
                ],),
              ),
            )

          ],
        ),
      ),
    );

    final fToast = FToast();
    fToast.init(context);
    fToast.showToast(
      child: _toast,
      gravity: toastGravity ??ToastGravity.BOTTOM,
      toastDuration: duration,
    );
  }
}
