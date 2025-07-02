import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/prifile/data/models/settings_card_model.dart';
import 'package:test1/features/prifile/presentation/views/widgets/card_item.dart';

class ReportItemListView extends StatelessWidget {
  const ReportItemListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> profileList = [
      SettingsCardModel(
        icon: 'assets/icons/user.svg',
        name: 'Report a bus driver',
        description: 'Driver',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/bus.svg',
        name: 'Report a bus',
        description: 'Bus',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.reportDetails);
        },
      ),
      SettingsCardModel(
        icon: 'assets/icons/cpu-setting.svg',
        name: 'Technical problem with the app',
        description: 'Technical problem ',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.report);
        },
      ),
      SettingsCardModel(
        icon: 'assets/icons/headphone.svg',
        name: 'Contact our customer service',
        description: 'Contact us',
        onTap: () {},
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
