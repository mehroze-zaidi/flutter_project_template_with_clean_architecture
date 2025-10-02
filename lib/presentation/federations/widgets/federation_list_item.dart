import 'package:flutter/material.dart';


import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';
import '../data/models/federation_model.dart';
import 'federation_context_menu.dart';

class FederationListItem extends StatelessWidget {
  final FederationModel federation;
  final VoidCallback? onTap;
  final VoidCallback? onView;
  final VoidCallback? onEdit;
  final VoidCallback? onDeactivate;

  const FederationListItem({
    super.key,
    required this.federation,
    this.onTap,
    this.onView,
    this.onEdit,
    this.onDeactivate,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Row(mainAxisSize: MainAxisSize.min,children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(federation.avatar),
                  backgroundColor: AppColors.greyColor.withOpacity(0.2),
                ),
                16.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      federation.name,
                      style: AppTextStyles.navlinks1.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    4.verticalSpace,
                    Text(
                      'Created ${federation.createdDate}',
                      style: AppTextStyles.body2.copyWith(
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),

              ],),
            ),
            2.horizontalSpace,
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: _getTypeColor(federation.type).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: _getTypeColor(federation.type),
                        width: 1,
                      ),
                    ),
                    child: Text(
                      federation.type,
                      style: AppTextStyles.body2.copyWith(
                        color: _getTypeColor(federation.type),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            2.horizontalSpace,
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 16,
                    color: AppColors.greyColor,
                  ),
                  4.horizontalSpace,
                  Text(
                    federation.location,
                    style: AppTextStyles.body2.copyWith(
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
            16.horizontalSpace,
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    final RenderBox button = context.findRenderObject() as RenderBox;
                    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
                    final RelativeRect position = RelativeRect.fromRect(
                      Rect.fromPoints(
                        button.localToGlobal(Offset.zero, ancestor: overlay),
                        button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
                      ),
                      Offset.zero & overlay.size,
                    );

                    FederationContextMenu.show(
                      context: context,
                      position: position,
                      onView: onView,
                      onEdit: onEdit,
                      onDeactivate: onDeactivate,
                    );
                  },
                  icon: Icon(
                    Icons.more_vert,
                    color: AppColors.greyColor,
                    size: 20,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Color _getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'international':
        return AppColors.tertiaryColor;
      case 'national':
        return AppColors.positiveColor;
      case 'regional':
        return AppColors.warningColor;
      default:
        return AppColors.greyColor;
    }
  }
}