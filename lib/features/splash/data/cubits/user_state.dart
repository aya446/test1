import 'dart:io';
import 'package:test1/features/splash/data/models/user_model.dart';

abstract class UserState {}

class UserInitial extends UserState {}

class UserImagePicked extends UserState {
  final File image;
  UserImagePicked(this.image);
}

class UserDataValidated extends UserState {
  final bool isValid;
  UserDataValidated(this.isValid);
}

class UserLoaded extends UserState {
  final UserModel user;
  UserLoaded(this.user);
}

class UserLoginSuccess extends UserState {}

class UserLoginFailed extends UserState {
  final String message;
  UserLoginFailed(this.message);
}
