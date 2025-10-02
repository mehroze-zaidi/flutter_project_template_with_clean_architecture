import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class NoFederationsWidget extends StatelessWidget {
  final VoidCallback? onAddFederation;

  const NoFederationsWidget({
    super.key,
    this.onAddFederation,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration:  BoxDecoration(
              color: AppColors.tertiary100,
              shape: BoxShape.circle,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  width: 80,
                  height: 80,
                  AppAssets.federationIcon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.tertiaryColor,
                    BlendMode.srcIn,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: AppColors.baseWhiteColor,
                      size: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
          32.verticalSpace,
          Text(
            'No Federations Yet',
            style: AppTextStyles.heading2.copyWith(
              color: AppColors.baseBlackColor,
            ),
          ),
          10.verticalSpace,
          Text(
            'Kick things off by setting up your first federation.',
            style: AppTextStyles.body1.copyWith(
              color: AppColors.greyColor,
            ),
          ),
          20.verticalSpace,
          CustomButton(

          icon: Icon(Icons.add,color: AppColors.baseWhiteColor,),
            title: 'Add Federation',
            onTap: onAddFederation,
          ),
        ],
      ),
    );
  }
}