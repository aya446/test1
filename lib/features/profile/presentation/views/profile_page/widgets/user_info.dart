import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/data/models/user_model.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});
  @override
  Widget build(BuildContext context) {
    final UserModel user = UserModel(
      userName: 'Ahmed Fayez Abdelfatah',
      phone: '+201001750444',
      image: 'assets/images/userPNG.png',
      planType: 'Premium Subscription',
      numberOfTrips: '23 trips',
      joinedYear: '2020',
    );

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(user.image),
                Text(user.userName, style: Styles.black14),
                Text(user.phone, style: Styles.black12),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(user.planType, style: Styles.green14),
                Container(width: 90, height: 1, color: AppColors.textColor),
                Text('${user.numberOfTrips} trips', style: Styles.black12),
                Container(width: 90, height: 1, color: AppColors.textColor),
                Text('Joined since ${user.joinedYear}', style: Styles.gray12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
