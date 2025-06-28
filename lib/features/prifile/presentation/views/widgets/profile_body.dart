import 'package:flutter/material.dart';
import 'package:test1/features/prifile/presentation/views/widgets/user_info_cart.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [UserInfoCart()]));
  }
}
