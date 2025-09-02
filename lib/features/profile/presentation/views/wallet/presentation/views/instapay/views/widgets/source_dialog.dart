import 'package:flutter/material.dart';

class ImageSourceDialog {
  static void show(
    BuildContext context, {
    required VoidCallback onGalleryTap,
    required VoidCallback onCameraTap,
  }) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Choose from Gallery"),
                onTap: onGalleryTap,
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Take a Photo"),
                onTap: onCameraTap,
              ),
            ],
          ),
        );
      },
    );
  }
}
