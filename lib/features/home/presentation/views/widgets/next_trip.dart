import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/home/Data/models/recent_ride_model.dart';
import 'package:test1/features/home/presentation/views/widgets/recent_ride_time.dart';

class NextTrip extends StatelessWidget {
  const NextTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGray),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text('Your trip in', style: Styles.gray12),
                Text('1 Hour and 30 minutes', style: Styles.orange14),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/bus.svg',
                  color: AppColors.mainColor,
                ),
              ],
            ),
            RecentRideTime(
              isWhite: false,
              isActive: true,
              recentRideModel: RecentRideModel(
                lineName: "Zayed line",
                linePrice: '250',
                numberOfstations: '5',
                departureTime: '10:00 AM',
                arrivalTime: '12:00 PM',
                duration: '2 Hours',
                departureArea: 'Giza',
                arrivalArea: 'Ramsis',
                departureStation: 'Giza Station',
                arrivalStation: 'Ramsis Station',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
