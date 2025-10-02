import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class FederationContextMenu extends StatelessWidget {
  final VoidCallback? onView;
  final VoidCallback? onEdit;
  final VoidCallback? onDeactivate;

  const FederationContextMenu({
    super.key,
    this.onView,
    this.onEdit,
    this.onDeactivate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: AppColors.baseWhiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: AppColors.baseBlackColor.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildMenuItem(
            icon: Icons.visibility_outlined,
            title: 'View',
            onTap: onView,
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.edit_outlined,
            title: 'Edit',
            onTap: onEdit,
          ),
          _buildDivider(),
          _buildMenuItem(
            icon: Icons.block_outlined,
            title: 'Deactivate',
            onTap: onDeactivate,
            isDestructive: true,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    VoidCallback? onTap,
    bool isDestructive = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: isDestructive ? AppColors.negativeColor : AppColors.greyColor,
            ),
            12.horizontalSpace,
            Text(
              title,
              style: AppTextStyles.body2.copyWith(
                color: isDestructive ? AppColors.negativeColor : AppColors.baseBlackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1,
      margin: EdgeInsets.symmetric(horizontal: 8),
      color: AppColors.greyColor.withValues(alpha: 0.2),
    );
  }

  static void show({
    required BuildContext context,
    required RelativeRect position,
    VoidCallback? onView,
    VoidCallback? onEdit,
    VoidCallback? onDeactivate,
  }) {
    showMenu<void>(
      context: context,
      position: position,
      color: Colors.transparent,
      elevation: 0,
      items: [
        PopupMenuItem<void>(
          padding: EdgeInsets.zero,
          child: FederationContextMenu(
            onView: () {
              context.pop();
              onView?.call();
            },
            onEdit: () {
              context.pop();
              onEdit?.call();
            },
            onDeactivate: () {
              context.pop();
              onDeactivate?.call();
            },
          ),
        ),
      ],
    );
  }
}