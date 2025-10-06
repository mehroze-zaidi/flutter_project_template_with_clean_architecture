import 'package:fedman_admin_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/common_widgets/custom_text_form_field.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class SelectInternationalAffiliationsWidget extends StatefulWidget {
  final VoidCallback? onSkip;
  final Function(List<String>)? onContinue;

  const SelectInternationalAffiliationsWidget({
    super.key,
    this.onSkip,
    this.onContinue,
  });

  @override
  State<SelectInternationalAffiliationsWidget> createState() => _SelectInternationalAffiliationsWidgetState();
}

class _SelectInternationalAffiliationsWidgetState extends State<SelectInternationalAffiliationsWidget> {
  final ValueNotifier<String> _searchNotifier = ValueNotifier('');
  final ValueNotifier<List<String>> _selectedAffiliationsNotifier = ValueNotifier([]);
  
  final List<Map<String, String>> _internationalAffiliations = [
    {
      'name': 'FIFA - Federation Internationale de Football Association',
      'type': 'Global Football Governing Body',
    },
    {
      'name': 'Olympic Committee',
      'type': 'International Sports Organization',
    },
    {
      'name': 'World Anti-Doping Agency (WADA)',
      'type': 'Anti-Doping Organization',
    },
    {
      'name': 'Court of Arbitration for Sport (CAS)',
      'type': 'Sports Arbitration Body',
    },
    {
      'name': 'International Football Association Board (IFAB)',
      'type': 'Laws of the Game Authority',
    },
    {
      'name': 'FIFA Medical Centre',
      'type': 'Medical Research Organization',
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
          Text(
            'Select your International Affiliations',
            style: AppTextStyles.subHeading2,
          ),
          16.verticalSpace,
          
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 57,
                  child: CustomTextFormField(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    hintText: 'Search international affiliations...',
                    prefixIcon: Icon(Icons.search, color: AppColors.greyColor),
                    onChange: (value) => _searchNotifier.value = value??"",
                  ),
                ),
              ),
              24.horizontalSpace,
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
              child: ValueListenableBuilder<String>(
                valueListenable: _searchNotifier,
                builder: (context, searchText, _) {
                  final filteredAffiliations = _internationalAffiliations
                      .where((affiliation) => 
                          affiliation['name']!.toLowerCase().contains(searchText.toLowerCase()) ||
                          affiliation['type']!.toLowerCase().contains(searchText.toLowerCase()))
                      .toList();
                  
                  return ValueListenableBuilder<List<String>>(
                    valueListenable: _selectedAffiliationsNotifier,
                    builder: (context, selectedAffiliations, _) {
                      return ListView.separated(
                        padding: EdgeInsets.symmetric(horizontal: 1),
                        itemCount: filteredAffiliations.length,
                        separatorBuilder: (_, __) => 12.verticalSpace,
                        itemBuilder: (context, index) {
                          final affiliation = filteredAffiliations[index];
                          final affiliationName = affiliation['name']!;
                          final affiliationType = affiliation['type']!;
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
    _searchNotifier.dispose();
    _selectedAffiliationsNotifier.dispose();
    super.dispose();
  }
}