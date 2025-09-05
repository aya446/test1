import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/recent_ride_name.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/recent_ride_time.dart';

class RecentRideCard extends StatelessWidget {
  const RecentRideCard({
    super.key,
    required this.recentRideModel,
    required this.isActive,
  });
  final RideModel recentRideModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .9,
      height: MediaQuery.sizeOf(context).width * .37,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.textColor),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RecentRideName(recentRideModel: recentRideModel, isActive: isActive),
          RecentRideTime(
            recentRideModel: recentRideModel,
            isActive: isActive,
            isWhite: false,
          ),
        ],
      ),
    );
  }
}
