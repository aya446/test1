import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/notification_mode.dart';
import 'package:test1/features/home/presentation/views/widgets/notification_card.dart';

class NotificatioListView extends StatelessWidget {
  const NotificatioListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<NotificationModel> notificationList = [
      NotificationModel(
        date: 'Dec 13 2024',
        message:
            'Your transaction of 500 EGP confirmed you can check your wallet now',
      ),
      NotificationModel(
        date: 'Dec 13 2024',
        message:
            'Your transaction of 500 EGP confirmed you can check your wallet now',
      ),
    ];

    return ListView.builder(
      itemCount: notificationList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: NotificationCard(notificationModel: notificationList[index]),
        );
      },
    );
  }
}
