import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/features/splash/data/models/user_model.dart';

import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  File? pickedImage;

  Future<void> pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );

    if (pickedFile != null) {
      pickedImage = File(pickedFile.path);
      emit(UserImagePicked(pickedImage!));
    }
  }

  void validateUser() {
    bool isValid =
        phoneController.text.trim().isNotEmpty &&
        nameController.text.trim().isNotEmpty;
    emit(UserDataValidated(isValid));
  }

  UserModel getUserModel() {
    return UserModel(
      userName: nameController.text.trim(),
      phone: phoneController.text.trim(),
      image: pickedImage,
    );
  }

  void loadUser() {
    final user = UserModel(
      userName: "Guest User",
      phone: "0000000000",
      image: null,
      planType: "Free Plan",
      numberOfTrips: "0",
      joinedYear: "2025",
    );
    emit(UserLoaded(user));
  }

  void loginUser() {
    final name = nameController.text.trim();

    if (name.isEmpty) {
      emit(UserLoginFailed("Please enter your name"));
    } else {
      emit(UserLoginSuccess());
    }
  }

  void dispose() {
    phoneController.dispose();
    nameController.dispose();
  }
}
