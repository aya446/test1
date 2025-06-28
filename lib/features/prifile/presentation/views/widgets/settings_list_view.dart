import 'package:flutter/material.dart';
import 'package:test1/features/prifile/data/models/settings_card_model.dart';
import 'package:test1/features/prifile/presentation/views/widgets/settings_card_item.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> profileList = [
      SettingsCardModel(
        Icon: 'assets/icons/Location.svg',
        name: 'City',
        description: 'Cairo',
        status: '(You have new notification)',
      ),
      SettingsCardModel(
        Icon: 'assets/icons/language-square.svg',
        name: 'Language',
        description: 'English',
        status: '(You have new messages)',
      ),
      SettingsCardModel(
        Icon: 'assets/icons/warning-2.svg',
        name: 'Report and FAQ',
        description: 'Report a problem',
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
          child: SettingsCardItem(settingsModel: profileList[index]),
        );
      },
    );
  }
}
