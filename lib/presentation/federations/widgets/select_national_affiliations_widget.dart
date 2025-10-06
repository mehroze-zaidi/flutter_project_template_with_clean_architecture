import 'package:fedman_admin_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class SelectNationalAffiliationsWidget extends StatefulWidget {
  final VoidCallback? onSkip;
  final Function(List<String>)? onContinue;

  const SelectNationalAffiliationsWidget({
    super.key,
    this.onSkip,
    this.onContinue,
  });

  @override
  State<SelectNationalAffiliationsWidget> createState() => _SelectNationalAffiliationsWidgetState();
}

class _SelectNationalAffiliationsWidgetState extends State<SelectNationalAffiliationsWidget> {
  final ValueNotifier<List<String>> _selectedAffiliationsNotifier = ValueNotifier([]);
  
  final List<Map<String, String>> _nationalAffiliations = [
    {
      'name': 'European Equestrian Federation',
      'country': 'USA',
      'icon': AppAssets.nationalFedTypeIcon,
    },
    {
      'name': 'World Equestrian Federation',
      'country': 'USA',
      'icon': AppAssets.nationalFedTypeIcon,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 500),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.neutral50,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Select your National Affiliations',
                style: AppTextStyles.subHeading2,
              ),
              Spacer(),
              CustomButton(
                isLeadingIcon: true,
                icon: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: SvgPicture.asset(AppAssets.federationIcon, colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn), width: 20, height: 20),
                ),
                title: 'Continue',
                isSecondaryBtn: true,
                onTap: () => widget.onContinue?.call(_selectedAffiliationsNotifier.value),
              ),
            ],
          ),
          24.verticalSpace,
          Expanded(
            child: ValueListenableBuilder<List<String>>(
              valueListenable: _selectedAffiliationsNotifier,
              builder: (context, selectedAffiliations, _) {
                return ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 1),
                  itemCount: _nationalAffiliations.length,
                  separatorBuilder: (context, index) => 12.verticalSpace,
                itemBuilder: (context, index) {
                  final affiliation = _nationalAffiliations[index];
                  final affiliationName = affiliation['name']!;
                  final affiliationCountry = affiliation['country']!;
                  final isSelected = selectedAffiliations.contains(affiliationName);
                  
                  return GestureDetector(
                    onTap: () {
                      final updatedList = List<String>.from(selectedAffiliations);
                      if (isSelected) {
                        updatedList.remove(affiliationName);
                      } else {
                        updatedList.add(affiliationName);
                      }
                      _selectedAffiliationsNotifier.value = updatedList;
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: isSelected ? AppColors.primary50 : AppColors.baseWhiteColor,
                        border: Border.all(
                          width: 0.5,
                          color: isSelected ? AppColors.primaryColor : AppColors.neutral100,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: NetworkImage(AppConstants.dummyImageUrl),
                            backgroundColor: AppColors.neutral200,
                          ),
                          16.horizontalSpace,
                          Expanded(
                            child: Text(
                              affiliationName,
                              style: AppTextStyles.body1.copyWith(
                                color: AppColors.baseBlackColor,
                                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                              ),
                            ),
                          ),
                          if (isSelected)
                            Icon(
                              Icons.check_circle,
                              color: AppColors.primaryColor,
                              size: 24,
                            ),
                        ],
                      ),
                    ),
                  );
                },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _selectedAffiliationsNotifier.dispose();
    super.dispose();
  }
}