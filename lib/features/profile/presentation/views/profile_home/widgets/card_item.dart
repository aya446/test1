import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/data/models/settings_card_model.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.settingsModel});
  final SettingsCardModel settingsModel;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: settingsModel.onTap,
      child: Container(
        width: size.width * .9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SvgPicture.asset(settingsModel.icon, color: Colors.black),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(settingsModel.name, style: Styles.orange11),
                  Row(
                    children: [
                      Text(settingsModel.description, style: Styles.black14),
                      SizedBox(width: 5),
                      Text(settingsModel.status ?? '', style: Styles.gray10),
                    ],
                  ),
                ],
              ),
              Spacer(),
              SvgPicture.asset('assets/icons/backArrow.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
