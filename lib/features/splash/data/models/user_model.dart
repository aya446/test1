import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class UserModel {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  File? pickedImage;

  bool validatePhone() {
    return phoneController.text.trim().isNotEmpty;
  }

  String get phoneNumber => phoneController.text.trim();
  String get userName => nameController.text.trim();

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );

    if (pickedFile != null) {
      pickedImage = File(pickedFile.path);
    }
  }

  void dispose() {
    phoneController.dispose();
    nameController.dispose();
  }
}
