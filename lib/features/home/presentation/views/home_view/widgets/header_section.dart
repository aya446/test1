import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/scan_Icon_Button.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: AppColors.mainColor, radius: 20),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi dr Ahmed', style: Styles.black16),
            Text('Subscription name', style: Styles.gray12),
          ],
        ),
        Spacer(),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.notification);
          },
          icon: Icon(FontAwesomeIcons.bell),
        ),
        SizedBox(width: 7),
        ScanIconButton(),
      ],
    );
  }
}
