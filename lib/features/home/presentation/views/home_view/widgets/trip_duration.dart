import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';

class TripDuration extends StatelessWidget {
  const TripDuration({
    super.key,
    required this.recentRideModel,
    required this.isActive,
  });
  final RideModel recentRideModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 2,
          color: isActive ? AppColors.secondColor : AppColors.darkGray,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isActive ? AppColors.secondColor : AppColors.darkGray,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              recentRideModel.duration ?? '',
              style: isActive ? Styles.green12 : Styles.darkGray12,
            ),
          ),
        ),
        Container(
          width: 60,
          height: 2,
          color: isActive ? AppColors.secondColor : AppColors.darkGray,
        ),
      ],
    );
  }
}
