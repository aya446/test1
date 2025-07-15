import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class ImagePreview extends StatelessWidget {
  const ImagePreview({super.key, this.selectedImage});
  final File? selectedImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.textColor,
      ),
      child: selectedImage == null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/camera.svg'),
                const SizedBox(height: 8),
                Text('Send Receipt photo', style: Styles.White12),
              ],
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.file(
                selectedImage!,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
    );
  }
}
