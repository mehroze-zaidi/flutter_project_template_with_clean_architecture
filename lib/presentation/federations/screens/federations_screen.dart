import 'package:fedman_admin_app/core/constants/app_constants.dart';
import 'package:fedman_admin_app/core/navigation/route_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../core/common_widgets/custom_buttons.dart';
import '../../../core/common_widgets/custom_text_form_field.dart';
import '../../../core/common_widgets/screen_body.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';
import '../data/models/federation_model.dart';
import '../widgets/federation_filter_dropdown.dart';
import '../widgets/federation_list_item.dart';
import '../widgets/no_federations_widget.dart';
import '../widgets/pagination_widget.dart';
import 'add_federation_screen.dart';

class FederationsScreen extends StatefulWidget {
  const FederationsScreen({super.key});

  @override
  State<FederationsScreen> createState() => _FederationsScreenState();
}

class _FederationsScreenState extends State<FederationsScreen> {
  final TextEditingController _searchController = TextEditingController();
  final ValueNotifier<String?> _selectedLocationNotifier = ValueNotifier(null);
  final ValueNotifier<String?> _selectedTypeNotifier = ValueNotifier(null);
  final ValueNotifier<int> _currentPageNotifier = ValueNotifier(1);
  final int _totalPages = 8;
  
  final List<String> _locations = ['All Locations', 'New York', 'Los Angeles', 'Sunnyvale', 'California'];
  final List<String> _types = ['Select type', 'International', 'National','Continental', 'Regional'];

  final List<FederationModel> _federations = [
    FederationModel(
      id: '1',
      name: 'European Equestrian Federation',
      type: 'International',
      location: 'New York',
      createdDate: '1/15/2024',
      avatar: AppConstants.dummyImageUrl,
    ),
    FederationModel(
      id: '2',
      name: 'American Horse Association',
      type: 'National',
      location: 'Los Angeles',
      createdDate: '1/15/2024',
      avatar: AppConstants.dummyImageUrl,
    ),
    FederationModel(
      id: '3',
      name: 'British Dressage Federation',
      type: 'International',
      location: 'Sunnyvale',
      createdDate: '1/15/2024',
      avatar: AppConstants.dummyImageUrl,
    ),
    FederationModel(
      id: '4',
      name: 'Australian Equestrian Federation',
      type: 'International',
      location: 'California',
      createdDate: '1/15/2024',
      avatar: AppConstants.dummyImageUrl,
    ),
  ];

  bool get _hasFederations => _federations.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return ScreenBody(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Federations',
                      style: AppTextStyles.subHeading1.copyWith(
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      'Manage all registered federations and their administrators',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                CustomButton(
                  title: 'Add Federation',
                  icon: Icon(
                    Icons.add,
                    color: AppColors.baseWhiteColor,
                    size: 20,
                  ),
                  onTap: _addFederation,
                ),
              ],
            ),
            32.verticalSpace,
            if (_hasFederations) ...[
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomTextFormField(
                      controller: _searchController,
                      hintText: 'Search by name or country...',
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: ValueListenableBuilder<String?>(
                      valueListenable: _selectedLocationNotifier,
                      builder: (context, selectedLocation, child) {
                        return FederationFilterDropdown(
                          title: 'All Locations',
                          selectedValue: selectedLocation,
                          items: _locations,
                          prefixIcon: Icons.location_on,
                          onChanged: (value) {
                            _selectedLocationNotifier.value = value;
                          },
                        );
                      },
                    ),
                  ),
                  16.horizontalSpace,
                  Expanded(
                    child: ValueListenableBuilder<String?>(
                      valueListenable: _selectedTypeNotifier,
                      builder: (context, selectedType, child) {
                        return FederationFilterDropdown(
                          title: 'Select type',
                          selectedValue: selectedType,
                          items: _types,
                          onChanged: (value) {
                            _selectedTypeNotifier.value = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.baseWhiteColor,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.greyColor.withOpacity(0.2),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.bgColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text(
                              'Federation',
                              style: AppTextStyles.body2.copyWith(
                                color: AppColors.tertiaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Type',
                              style: AppTextStyles.body2.copyWith(
                                color: AppColors.tertiaryColor,
                                fontWeight: FontWeight.w600,

                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Location',
                              style: AppTextStyles.body2.copyWith(
                                color: AppColors.tertiaryColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(width: 56),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _federations.length,
                      padding: EdgeInsets.all(10),
                      itemBuilder: (context, index) {

                        return FederationListItem(
                          federation: _federations[index],
                          onTap: () => _viewFederation(_federations[index]),
                          onView: () => _viewFederation(_federations[index]),
                          onEdit: () => _editFederation(_federations[index]),
                          onDeactivate: () => _deactivateFederation(_federations[index]),
                        );
                      },
                    ),
                  ],
                ),
              ),
              24.verticalSpace,
              ValueListenableBuilder<int>(
                valueListenable: _currentPageNotifier,
                builder: (context, currentPage, child) {
                  return PaginationWidget(
                    currentPage: currentPage,
                    totalPages: _totalPages,
                    onPrevious: () {
                      if (currentPage > 1) {
                        _currentPageNotifier.value = currentPage - 1;
                      }
                    },
                    onNext: () {
                      if (currentPage < _totalPages) {
                        _currentPageNotifier.value = currentPage + 1;
                      }
                    },
                    onPageSelected: (page) {
                      _currentPageNotifier.value = page;
                    },
                  );
                },
              ),
            ] else ...[
              Expanded(
                child: NoFederationsWidget(
                  onAddFederation: _addFederation,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _addFederation() {
    context.go(RouteName.addFederation);
  }

  void _viewFederation(FederationModel federation) {
    print('View federation: ${federation.name}');
  }

  void _editFederation(FederationModel federation) {
    print('Edit federation: ${federation.name}');
  }

  void _deactivateFederation(FederationModel federation) {
    print('Deactivate federation: ${federation.name}');
  }

  @override
  void dispose() {
    _searchController.dispose();
    _selectedLocationNotifier.dispose();
    _selectedTypeNotifier.dispose();
    _currentPageNotifier.dispose();
    super.dispose();
  }
}