import 'package:fedman_admin_app/core/constants/app_assets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/space.dart';
import '../../../core/theme/app_text_styles.dart';

class FileUploadWidget extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  final String? fileName;
  final Function(DropzoneFileInterface)? onDropFile;
  final Function(DropzoneViewController)? onControllerCreated;
  final String? fileUrl;
  final bool isLogo;

  const FileUploadWidget({
    super.key,
    required this.title,
    required this.description,
    this.onTap,
    this.fileName,
    this.onDropFile,
    this.onControllerCreated,
    this.fileUrl,
    this.isLogo = false,
  });

  @override
  bool get hasFile => fileName != null && fileName!.isNotEmpty;

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
        if (kIsWeb && onDropFile != null && onControllerCreated != null)
          _buildDropzoneArea()
        else
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                color: AppColors.neutral50,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColors.neutral200,
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
        SvgPicture.asset(AppAssets.fileUploadIcon,width: 40,height: 40,),
        8.verticalSpace,
        Text(
          isLogo ? 'Upload/Drag & Drop logo' : 'Upload/Drag & Drop Documents',
          style: AppTextStyles.body2.copyWith(
            color: AppColors.baseBlackColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildFilePreview() {
    final showImagePreview = isLogo && fileUrl != null && fileUrl!.isNotEmpty;
    
    return Padding(
      padding: EdgeInsets.all(0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showImagePreview)
            Image.network(
              fileUrl!,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Icon(
                  Icons.image_outlined,
                  color: AppColors.positiveColor,
                  size: 24,
                );
              },
            )
          else
            Icon(
              isLogo ? Icons.image_outlined : Icons.description_outlined,
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

  Widget _buildDropzoneArea() {
    return Stack(
      children: [
        SizedBox(
          height: 120,
          child: DropzoneView(
            onCreated: (ctrl) {
              if (onControllerCreated != null) {
                onControllerCreated!(ctrl);
              }
            },
            onDropFile: onDropFile,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color: AppColors.neutral50,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.neutral200,
              ),
            ),
            child: hasFile ? _buildFilePreview() : _buildUploadPrompt(),
          ),
        ),
      ],
    );
  }
}