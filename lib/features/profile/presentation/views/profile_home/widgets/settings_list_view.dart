import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/profile/data/models/settings_card_model.dart';
import 'package:test1/features/profile/presentation/views/profile_home/widgets/card_item.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> profileList = [
      SettingsCardModel(
        icon: 'assets/icons/Location.svg',
        name: 'City',
        description: 'Cairo',
        status: '(You have new notification)',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/language-square.svg',
        name: 'Language',
        description: 'English',
        status: '(You have new messages)',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/warning-2.svg',
        name: 'Report and FAQ',
        description: 'Report a problem',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.report);
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
