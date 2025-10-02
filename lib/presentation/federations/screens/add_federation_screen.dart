import 'package:fedman_admin_app/core/common_widgets/common_widgets_barrel.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/common_widgets/custom_text_form_field.dart';
import '../../../core/common_widgets/screen_body.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';
import '../widgets/federation_filter_dropdown.dart';
import '../widgets/federation_type_selector.dart';
import '../widgets/file_upload_widget.dart';

class AddFederationScreen extends StatefulWidget {
  const AddFederationScreen({super.key});

  @override
  State<AddFederationScreen> createState() => _AddFederationScreenState();
}

class _AddFederationScreenState extends State<AddFederationScreen> {
  final TextEditingController _federationNameController = TextEditingController();
  final TextEditingController _streetAddressController = TextEditingController();
  final TextEditingController _postCodeController = TextEditingController();
  
  final ValueNotifier<String?> _selectedTypeNotifier = ValueNotifier(null);
  final ValueNotifier<String?> _selectedCountryNotifier = ValueNotifier(null);
  final ValueNotifier<String?> _selectedCityNotifier = ValueNotifier(null);
  final ValueNotifier<bool> _hasLogoNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _hasDocumentsNotifier = ValueNotifier(false);
  final ValueNotifier<String?> _logoFileNameNotifier = ValueNotifier(null);
  final ValueNotifier<String?> _documentsFileNameNotifier = ValueNotifier(null);

  final List<String> _countries = [
    'Select country',
    'United States',
    'United Kingdom',
    'Germany',
    'France',
    'Italy',
    'Spain',
    'Australia',
    'Canada',
  ];

  final List<String> _cities = [
    'City',
    'New York',
    'London',
    'Berlin',
    'Paris',
    'Rome',
    'Madrid',
    'Sydney',
    'Toronto',
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: RoundedContainerWidget(
          showShadow: false,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create a new federation',
                  style: AppTextStyles.subHeading1.copyWith(
                  ),
                ),
                12.verticalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Federation Name',
                      style: AppTextStyles.body1.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    12.verticalSpace,
                    CustomTextFormField(
                      controller: _federationNameController,
                      hintText: 'Enter federation name',
                    ),
                    24.verticalSpace,
                    ValueListenableBuilder<String?>(
                      valueListenable: _selectedTypeNotifier,
                      builder: (context, selectedType, child) {
                        return FederationTypeSelector(
                          selectedType: selectedType,
                          onTypeSelected: (type) {
                            _selectedTypeNotifier.value = type;
                          },
                        );
                      },
                    ),
                    24.verticalSpace,
                    Text(
                      'Address',
                      style: AppTextStyles.body1.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    12.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: ValueListenableBuilder<String?>(
                            valueListenable: _selectedCountryNotifier,
                            builder: (context, selectedCountry, child) {
                              return FederationFilterDropdown(
                                title: 'Select country',
                                selectedValue: selectedCountry,
                                items: _countries,
                                onChanged: (value) {
                                  _selectedCountryNotifier.value = value;
                                },
                              );
                            },
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: ValueListenableBuilder<String?>(
                            valueListenable: _selectedCityNotifier,
                            builder: (context, selectedCity, child) {
                              return FederationFilterDropdown(
                                title: 'City',
                                selectedValue: selectedCity,
                                items: _cities,
                                onChanged: (value) {
                                  _selectedCityNotifier.value = value;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    16.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextFormField(
                            controller: _streetAddressController,
                            hintText: 'Street Address',
                          ),
                        ),
                        16.horizontalSpace,
                        Expanded(
                          child: CustomTextFormField(
                            controller: _postCodeController,
                            hintText: 'Post code',
                          ),
                        ),
                      ],
                    ),
                    24.verticalSpace,
                    ValueListenableBuilder<bool>(
                      valueListenable: _hasLogoNotifier,
                      builder: (context, hasLogo, child) {
                        return ValueListenableBuilder<String?>(
                          valueListenable: _logoFileNameNotifier,
                          builder: (context, fileName, child) {
                            return FileUploadWidget(
                              title: 'Federation Logo',
                              description: 'PNG, JPG up to 2MB. Recommended size: 200x200px',
                              hasFile: hasLogo,
                              fileName: fileName,
                              onTap: _handleLogoUpload,
                            );
                          },
                        );
                      },
                    ),
                    24.verticalSpace,
                    ValueListenableBuilder<bool>(
                      valueListenable: _hasDocumentsNotifier,
                      builder: (context, hasDocuments, child) {
                        return ValueListenableBuilder<String?>(
                          valueListenable: _documentsFileNameNotifier,
                          builder: (context, fileName, child) {
                            return FileUploadWidget(
                              title: 'Federation Documents',
                              description: 'Upload statutes, rules, and other federation documents (PDF)',
                              hasFile: hasDocuments,
                              fileName: fileName,
                              onTap: _handleDocumentsUpload,
                            );
                          },
                        );
                      },
                    ),
                    32.verticalSpace,
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        title: 'Cancel',
                        buttonColor: AppColors.baseWhiteColor,
                        titleColor: AppColors.baseBlackColor,
                        borderColor: AppColors.greyColor.withValues(alpha: 0.3),
                        onTap: _handleCancel,
                      ),
                    ),
                    16.horizontalSpace,
                    Expanded(
                      child: CustomButton(
                        title: 'Create Federation',
                        onTap: _handleCreateFederation,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleLogoUpload() {
    _hasLogoNotifier.value = true;
    _logoFileNameNotifier.value = 'federation_logo.png';
  }

  void _handleDocumentsUpload() {
    _hasDocumentsNotifier.value = true;
    _documentsFileNameNotifier.value = 'federation_documents.pdf';
  }

  void _handleCancel() {
    context.pop();
  }

  void _handleCreateFederation() {
    print('Creating federation...');
    print('Name: ${_federationNameController.text}');
    print('Type: ${_selectedTypeNotifier.value}');
    print('Country: ${_selectedCountryNotifier.value}');
    print('City: ${_selectedCityNotifier.value}');
    print('Street: ${_streetAddressController.text}');
    print('Post code: ${_postCodeController.text}');
    print('Has logo: ${_hasLogoNotifier.value}');
    print('Has documents: ${_hasDocumentsNotifier.value}');
    
    context.pop();
  }

  @override
  void dispose() {
    _federationNameController.dispose();
    _streetAddressController.dispose();
    _postCodeController.dispose();
    _selectedTypeNotifier.dispose();
    _selectedCountryNotifier.dispose();
    _selectedCityNotifier.dispose();
    _hasLogoNotifier.dispose();
    _hasDocumentsNotifier.dispose();
    _logoFileNameNotifier.dispose();
    _documentsFileNameNotifier.dispose();
    super.dispose();
  }
}
