import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class FederationTypeSelector extends StatelessWidget {
  final String? selectedType;
  final ValueChanged<String> onTypeSelected;

  const FederationTypeSelector({
    super.key,
    this.selectedType,
    required this.onTypeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Federation Type',
              style: AppTextStyles.body1.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            4.horizontalSpace,
            Icon(
              Icons.info_outline,
              size: 16,
              color: AppColors.greyColor,
            ),
          ],
        ),
        12.verticalSpace,
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            _buildTypeOption(
              AppAssets.internationalFedTypeIcon,
              'International',
              'International',
            ),
            _buildTypeOption(
              AppAssets.nationalFedTypeIcon,
              'National',
              'National',
            ),
            _buildTypeOption(
              AppAssets.continentalFedTypeIcon,
              'Continental',
              'Continental',
            ),
            _buildTypeOption(
              AppAssets.regionalFedTypeIcon,
              'Regional',
              'Regional',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTypeOption(String iconPath, String type, String value) {
    final isSelected = selectedType == value;
    
    return GestureDetector(
      onTap: () => onTypeSelected(value),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.tertiaryColor.withValues(alpha: 0.1) : AppColors.baseWhiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.tertiaryColor : AppColors.greyColor.withValues(alpha: 0.3),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              iconPath,
              width: 20,
              height: 20,
            ),
            8.horizontalSpace,
            Text(
              type,
              style: AppTextStyles.body2.copyWith(
                color: isSelected ? AppColors.tertiaryColor : AppColors.baseBlackColor,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}