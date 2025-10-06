import 'package:fedman_admin_app/core/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/extensions/space.dart';
import '../../../core/common_widgets/custom_buttons.dart';

class FederationAddedSuccessfullyDialogWidget extends StatelessWidget {
  const FederationAddedSuccessfullyDialogWidget({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const FederationAddedSuccessfullyDialogWidget(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      backgroundColor: AppColors.baseWhiteColor,
      child: Container(
        padding: const EdgeInsets.all(32),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppAssets.successCheckMark,

              height: 200,
            ),
            
            24.verticalSpace,
            
            // Success title
            Text(
              'Awesome!',
              style: AppTextStyles.heading2.copyWith(
                color: AppColors.baseBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            8.verticalSpace,
            
            // Success message
            Text(
              'Wow new federation!',
              style: AppTextStyles.subHeading2.copyWith(
                color: AppColors.baseBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            
            8.verticalSpace,
            
            Text(
              "We've added this federation to your existing\nfederations.",
              textAlign: TextAlign.center,
              style: AppTextStyles.body1.copyWith(
                color: AppColors.greyColor,
                height: 1.5,
              ),
            ),
            
            40.verticalSpace,

            CustomButton(
              title: 'Back to Dashboard',
              buttonColor: AppColors.primaryColor,
              titleColor: AppColors.baseWhiteColor,
              onTap: () {
                context.pop();
                context.go(RouteName.home);
              },
            ),
          ],
        ),
      ),
    );
  }
}