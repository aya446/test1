import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/prifile/presentation/views/widgets/profile_list_view.dart';
import 'package:test1/features/prifile/presentation/views/widgets/settings_list_view.dart';
import 'package:test1/features/prifile/presentation/views/widgets/user_info_cart.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoCart(),
              SizedBox(height: 20),
              ProfileListView(),
              SizedBox(height: 10),
              Text('Settings', style: Styles.black17),
              SizedBox(height: 10),
              SettingsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
