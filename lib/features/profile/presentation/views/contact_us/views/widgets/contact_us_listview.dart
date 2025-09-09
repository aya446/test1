import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/profile/data/models/settings_card_model.dart';
import 'package:test1/features/profile/presentation/views/profile_page/widgets/card_item.dart';

class ContactUsListview extends StatelessWidget {
  const ContactUsListview({super.key});
  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> profileList = [
      SettingsCardModel(
        icon: 'assets/icons/chat.svg',
        iconColor: Colors.black,
        name: 'Chat with us directly',
        description: 'Chat',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.chat);
        },
      ),
      SettingsCardModel(
        icon: 'assets/icons/sms.svg',
        iconColor: Colors.black,
        name: 'Khutoot@gmail.com',
        description: 'Send e-mail',
        onTap: () {},
      ),
      SettingsCardModel(
        icon: 'assets/icons/call.svg',
        iconColor: Colors.black,
        name: '+201001765439',
        description: 'Call us',
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
