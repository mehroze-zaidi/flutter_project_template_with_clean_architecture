// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../constants/app_colors.dart';
import '../theme/app_text_styles.dart';


class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String? title;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String? value)? onChange;
 final EdgeInsets? contentPadding;
 final double? height;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.title,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.readOnly = false,
    this.onTap,
    this.onChange,this.prefixIcon,
    this.contentPadding,this.height
  });

  @override
  Widget build(BuildContext context) {
    return
        TextFormField(
          expands: true,
          maxLines: null,
          onChanged:onChange ,
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          readOnly: readOnly,
          onTap: onTap,
          onTapOutside: (event) {
            FocusScope.of(context).unfocus();
          },
          obscureText: obscureText,
          style: AppTextStyles.cta2.copyWith(

            color: AppColors.baseBlackColor,
          ),
          cursorColor: AppColors.primaryColor,

          decoration: InputDecoration(
            constraints: BoxConstraints(maxHeight: 50,minHeight: 45),
            hintText: hintText,

            hintStyle: AppTextStyles.cta2.copyWith(
              color: AppColors.greyColor,
            ),
            contentPadding:contentPadding,

            suffixIcon: suffixIcon,
            prefixIcon:prefixIcon ,

            suffixIconColor: AppColors.greyColor,
            filled: true,
            fillColor: AppColors.baseWhiteColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: AppColors.neutral200,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: AppColors.neutral200,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: AppColors.neutral200,
              ),
            ),

          ),
        );

  }
}

class CustomPhoneNumberField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(PhoneNumber)? onChanged;
  final Function(Country)? onCountryChanged;
  final String initialCountryCode;
  final String? initialValue;
  final TextEditingController? controller;

  const CustomPhoneNumberField({
    super.key,
    this.title,
    this.hintText,
    this.validator,
    this.onChanged,
    this.onCountryChanged,
    this.initialCountryCode = 'GB',
    this.initialValue,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final InputBorder borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(color: AppColors.greyColor.withValues(alpha: .3)),
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title != null
            ? Text(title!, style: AppTextStyles.body2.copyWith(fontSize: 14.sp))
            : SizedBox.shrink(),
        8.verticalSpace,
        SizedBox(
          height: 67.h,

          child: IntlPhoneField(
            controller: controller,
            initialCountryCode: initialCountryCode,
            onChanged: onChanged,
            onCountryChanged: onCountryChanged,
            disableLengthCheck: true,
            flagsButtonPadding: EdgeInsets.symmetric(horizontal: 16.w),
            pickerDialogStyle: PickerDialogStyle(
              width: double.infinity,
              backgroundColor: Colors.white,
              countryCodeStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              countryNameStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
            ),
            decoration: InputDecoration(
              border: borderStyle,
              enabledBorder: borderStyle,
              focusedBorder: borderStyle,
              // contentPadding: EdgeInsets.zero,
            ),

            //style: TextStyle(color: Colors.transparent),
          ),
        ),
      ],
    );
  }
}
