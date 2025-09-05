import 'dart:io';
import 'package:flutter/material.dart';

class ImagePickerWidget extends StatelessWidget {
  final File? imageFile;
  final VoidCallback onPick;

  const ImagePickerWidget({
    super.key,
    required this.imageFile,
    required this.onPick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPick,
      child: CircleAvatar(
        radius: 50,
        backgroundColor: Colors.grey[300],
        backgroundImage: imageFile != null
            ? FileImage(imageFile!)
            : const AssetImage('assets/images/camera.png') as ImageProvider,
      ),
    );
  }
}
