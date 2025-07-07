import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/home/Data/models/notification_mode.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key, required this.notificationModel});
  final NotificationModel notificationModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGray),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Color(0xffFEEFE9),
              radius: 20,
              child: SvgPicture.asset('assets/icons/robot.svg'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Khutoot bot', style: Styles.darkGray12),
                      Spacer(),
                      Text(notificationModel.date, style: Styles.black12),
                      SizedBox(width: 8),
                      CircleAvatar(radius: 7, backgroundColor: Colors.green),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text(
                    notificationModel.message,
                    style: Styles.black14,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
