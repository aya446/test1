import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class HaveNoTripsCard extends StatelessWidget {
  const HaveNoTripsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      width: double.infinity,
      height: size.height * .09,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGray),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('You have no upcoming trips', style: Styles.black14),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/bus.svg',
                  color: AppColors.mainColor,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Book your ride", style: Styles.orange14),
                SizedBox(width: 20),
                Icon(Icons.arrow_forward, color: AppColors.mainColor, size: 18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
