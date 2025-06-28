import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/prifile/presentation/views/widgets/user_info.dart';

class UserInfoCart extends StatelessWidget {
  const UserInfoCart({super.key});
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          width: size.width * .9,
          height: size.height * .18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.textColor, width: 2),
          ),
          child: UserInfo(),
        ),
      ),
    );
  }
}
