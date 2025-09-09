import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/splash/data/cubits/user_cubit.dart';
import 'package:test1/features/splash/data/cubits/user_state.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        final user = (state as UserLoaded).user;

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: user.image != null
                          ? Image.file(
                              user.image!,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              "assets/images/empty_user.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                    ),
                    Text(user.userName ?? 'User name', style: Styles.black14),
                    Text(user.phone ?? 'Phone', style: Styles.black12),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(user.planType ?? 'Plan', style: Styles.green14),
                    Container(width: 90, height: 1, color: AppColors.textColor),
                    Text(
                      '${user.numberOfTrips ?? "0"} trips',
                      style: Styles.black12,
                    ),
                    Container(width: 90, height: 1, color: AppColors.textColor),
                    Text(
                      'Joined since ${user.joinedYear ?? ""}',
                      style: Styles.gray12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
