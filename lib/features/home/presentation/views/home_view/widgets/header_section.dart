import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/scan_Icon_Button.dart';
import 'package:test1/features/splash/data/cubits/user_cubit.dart';
import 'package:test1/features/splash/data/cubits/user_state.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        final user = state is UserLoaded ? state.user : null;
        return Row(
          children: [
            ClipOval(
              child: user?.image != null
                  ? Image.file(
                      user!.image!,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      "assets/images/empty_user.jpg",
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user?.userName ?? 'User name', style: Styles.black14),
                Text(
                  user?.planType ?? 'subscription name',
                  style: Styles.gray12,
                ),
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.notification);
              },
              icon: const Icon(FontAwesomeIcons.bell),
            ),
            const SizedBox(width: 7),
            const ScanIconButton(),
          ],
        );
      },
    );
  }
}
