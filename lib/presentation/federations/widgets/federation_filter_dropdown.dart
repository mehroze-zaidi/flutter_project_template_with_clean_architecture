import 'package:flutter/material.dart';


import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class FederationFilterDropdown extends StatelessWidget {
  final String title;
  final String? selectedValue;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final IconData? prefixIcon;

  const FederationFilterDropdown({
    super.key,
    required this.title,
    this.selectedValue,
    required this.items,
    required this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.baseWhiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColors.neutral200
        ),
      ),
      child: DropdownButtonHideUnderline(

        child: DropdownButton<String>(

          value: selectedValue,
          hint: Row(
            children: [
              if (prefixIcon != null) ...[
                Icon(
                  prefixIcon,
                  size: 16,
                  color: AppColors.greyColor,
                ),
                8.horizontalSpace,
              ],
              Text(
                title,
                style: AppTextStyles.body2.copyWith(
                  color: AppColors.greyColor,
                ),
              ),
            ],
          ),
          icon: Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.greyColor,
            size: 20,
          ),
          isExpanded: true,
          onChanged: onChanged,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Row(
                children: [
                  if (prefixIcon != null) ...[
                    Icon(
                      prefixIcon,
                      size: 16,
                      color: AppColors.greyColor,
                    ),
                    8.horizontalSpace,
                  ],
                  Text(
                    item,
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.baseBlackColor,
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
          dropdownColor: AppColors.baseWhiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}