import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/profile/data/models/settings_card_model.dart';
import 'package:test1/features/profile/presentation/views/profile_page/widgets/card_item.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> profileList = [
      SettingsCardModel(
        icon: 'assets/icons/wallet.svg',
        name: 'Payemnts and wallet',
        description: 'Wallet',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.wallet);
        },
      ),
      SettingsCardModel(
        icon: 'assets/icons/notification.svg',
        name: 'Notification',
        description: 'Notifications',
        status: '(You have new notification)',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/message.svg',
        name: 'Messages and texting',
        description: 'Massages',
        status: '(You have new messages)',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/map.svg',
        name: 'My trips and history',
        description: 'My trips',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.myTrips);
        },
      ),
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: profileList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: CardItem(settingsModel: profileList[index]),
        );
      },
    );
  }
}
