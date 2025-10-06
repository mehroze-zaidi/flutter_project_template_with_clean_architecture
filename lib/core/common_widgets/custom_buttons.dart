// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import '../theme/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final dynamic icon;
  final Color? buttonColor;
  final Color? titleColor;
  final Color? borderColor;
  final Function()? onTap;
  final bool isLoading;
  final bool isLeadingIcon;
  final bool isSecondaryBtn;

  const CustomButton({
    super.key,
    required this.title,
    this.icon,
    this.buttonColor,
    this.titleColor,
    this.borderColor,
    this.onTap,
    this.isLoading = false,
    this.isLeadingIcon = true,
    this.isSecondaryBtn = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isLoading
          ? AppColors.greyColor
          : isSecondaryBtn
          ? AppColors.primary50
          : AppColors.primaryColor,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // side:isSecondaryBtn?BorderSide.none: BorderSide(color:  borderColor ?? AppColors.transparentColor),
      ),
      child: InkWell(
        onTap: isLoading ? null : onTap,
        splashColor: (titleColor ?? AppColors.baseWhiteColor).withValues(
          alpha: .4,
        ),
        // highlightColor: (titleColor ?? AppColors.baseWhiteColor).withOpacity(0.1),
        child: Container(
          height: 57,

          padding: EdgeInsets.symmetric(horizontal: 16),
          // color:  isSecondaryBtn?AppColors.primary50:null,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: icon != null
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              if (isLoading)
                SizedBox(
                  width: 20.w,
                  height: 20.h,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      titleColor ?? AppColors.baseWhiteColor,
                    ),
                  ),
                )
              else ...[
                if (icon != null && isLeadingIcon) icon,
                Text(
                  title,
                  style: AppTextStyles.cta2.copyWith(
                    color: isSecondaryBtn
                        ? AppColors.primaryColor
                        : AppColors.baseWhiteColor,
                  ),
                ),
                if (icon != null && !isLeadingIcon) icon,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final Function() onPressed;
  final String icon;
  final String title;
  final Color? buttonColor;
  final Color? titleColor;

  const SocialButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.title,
    this.buttonColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54.h,
      margin: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: buttonColor ?? AppColors.baseWhiteColor,
        border: Border.all(color: AppColors.greyColor.withOpacity(0.3)),
      ),
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: 20),
            10.horizontalSpace,
            Text(
              title,
              style: AppTextStyles.body2.copyWith(
                color: titleColor ?? AppColors.baseBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
