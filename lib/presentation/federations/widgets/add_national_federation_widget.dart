import 'package:fedman_admin_app/core/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/common_widgets/custom_text_form_field.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class AddNationalFederationWidget extends StatefulWidget {
  final VoidCallback? onCancel;
  final Function(List<String>)? onAddSelected;

  const AddNationalFederationWidget({
    super.key,
    this.onCancel,
    this.onAddSelected,
  });

  @override
  State<AddNationalFederationWidget> createState() => _AddNationalFederationWidgetState();
}

class _AddNationalFederationWidgetState extends State<AddNationalFederationWidget> {
  final ValueNotifier<String> _searchNotifier = ValueNotifier('');
  final ValueNotifier<List<String>> _selectedNationalFederationsNotifier = ValueNotifier([]);
  
  final List<Map<String, String>> _nationalFederations = [
    {
      'name': 'American Horse Services',
      'country': 'USA',
      'icon': AppAssets.nationalFedTypeIcon,
    },
    {
      'name': 'American Dog Association',
      'country': 'USA',
      'icon': AppAssets.nationalFedTypeIcon,
    },
    {
      'name': 'United Canine and Equine Sports Federation',
      'country': 'USA',
      'icon': AppAssets.nationalFedTypeIcon,
    },
    {
      'name': 'British Equestrian Sports Alliance',
      'country': 'UK',
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
          Text(
            'Add National Federation as Members',
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
                    hintText: 'Search for federations...',
                    prefixIcon: Icon(Icons.search, color: AppColors.greyColor),
                    onChange: (value) => _searchNotifier.value = value ?? '',
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
                title: 'Add Selected',
                isSecondaryBtn: true,
                onTap: () {
                  widget.onAddSelected?.call(_selectedNationalFederationsNotifier.value);
                },
              ),
            ],
          ),
          24.verticalSpace,
          Expanded(
            child: ValueListenableBuilder<String>(
              valueListenable: _searchNotifier,
              builder: (context, searchText, _) {
                final filteredFederations = _nationalFederations
                    .where((federation) => federation['name']!.toLowerCase().contains(searchText.toLowerCase()))
                    .toList();
                
                return ValueListenableBuilder<List<String>>(
                  valueListenable: _selectedNationalFederationsNotifier,
                  builder: (context, selectedFederations, _) {
                    return ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 1),
                      itemCount: filteredFederations.length,
                      separatorBuilder: (context, index) => 12.verticalSpace,
                    itemBuilder: (context, index) {
                      final federation = filteredFederations[index];
                      final federationName = federation['name']!;
                      final federationCountry = federation['country']!;
                      final isSelected = selectedFederations.contains(federationName);
                      
                      return GestureDetector(
                        onTap: () {
                          final updatedList = List<String>.from(selectedFederations);
                          if (isSelected) {
                            updatedList.remove(federationName);
                          } else {
                            updatedList.add(federationName);
                          }
                          _selectedNationalFederationsNotifier.value = updatedList;
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
                                  federationName,
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
    _selectedNationalFederationsNotifier.dispose();
    super.dispose();
  }
}