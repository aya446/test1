import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/presentation/views/profile_home/widgets/user_info.dart';

class UserInfoCart extends StatelessWidget {
  const UserInfoCart({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * .18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.textColor, width: 2),
      ),
      child: UserInfo(),
    );
  }
}
