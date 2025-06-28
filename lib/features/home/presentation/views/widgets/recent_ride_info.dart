import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:test1/features/home/presentation/views/widgets/line_name_and_price.dart';
import 'package:test1/features/home/presentation/views/widgets/travel_time.dart';

class RecentRideInfo extends StatelessWidget {
  const RecentRideInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .9,
      height: MediaQuery.sizeOf(context).width * .4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.textColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LineNameAndPrice(LineName: 'Zayed Line', price: "250"),
          TripTime(),
        ],
      ),
    );
  }
}
