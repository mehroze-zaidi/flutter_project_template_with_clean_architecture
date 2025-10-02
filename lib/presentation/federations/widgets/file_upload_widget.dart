import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class FileUploadWidget extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  final bool hasFile;
  final String? fileName;

  const FileUploadWidget({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
    this.hasFile = false,
    this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.body1.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        12.verticalSpace,
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.baseWhiteColor,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.greyColor.withValues(alpha: 0.3),
                style: BorderStyle.solid,
              ),
            ),
            child: hasFile ? _buildFilePreview() : _buildUploadPrompt(),
          ),
        ),
        8.verticalSpace,
        Text(
          description,
          style: AppTextStyles.body2.copyWith(
            color: AppColors.greyColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildUploadPrompt() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.positiveColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(
            Icons.upload_outlined,
            color: AppColors.positiveColor,
            size: 20,
          ),
        ),
        8.verticalSpace,
        Text(
          title.contains('Logo') ? 'Upload logo' : 'Upload Documents',
          style: AppTextStyles.body2.copyWith(
            color: AppColors.baseBlackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildFilePreview() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            title.contains('Logo') ? Icons.image_outlined : Icons.description_outlined,
            color: AppColors.positiveColor,
            size: 24,
          ),
          8.verticalSpace,
          Text(
            fileName ?? 'File uploaded',
            style: AppTextStyles.body2.copyWith(
              color: AppColors.baseBlackColor,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          4.verticalSpace,
          Text(
            'Tap to change',
            style: AppTextStyles.body2.copyWith(
              color: AppColors.greyColor,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}