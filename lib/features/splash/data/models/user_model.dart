import 'dart:io';

class UserModel {
  final String? userName;
  final String? phone;
  final File? image;
  final String? planType;
  final String? numberOfTrips;
  final String? joinedYear;

  const UserModel({
    this.userName,
    this.phone,
    this.image,
    this.planType,
    this.numberOfTrips,
    this.joinedYear,
  });

  UserModel copyWith({
    String? userName,
    String? phone,
    File? image,
    String? planType,
    String? numberOfTrips,
    String? joinedYear,
    bool removeImage = false,
  }) {
    return UserModel(
      userName: userName ?? this.userName,
      phone: phone ?? this.phone,
      image: removeImage ? null : (image ?? this.image),
      planType: planType ?? this.planType,
      numberOfTrips: numberOfTrips ?? this.numberOfTrips,
      joinedYear: joinedYear ?? this.joinedYear,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userName': userName,
      'phone': phone,
      'image': image?.path,
      'planType': planType,
      'numberOfTrips': numberOfTrips,
      'joinedYear': joinedYear,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    final imagePath = json['image'] as String?;
    return UserModel(
      userName: json['userName'] as String?,
      phone: json['phone'] as String?,
      image: (imagePath != null && imagePath.isNotEmpty)
          ? File(imagePath)
          : null,
      planType: json['planType'] as String?,
      numberOfTrips: json['numberOfTrips'] as String?,
      joinedYear: json['joinedYear'] as String?,
    );
  }
}
