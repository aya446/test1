import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';

class RecentRideName extends StatelessWidget {
  const RecentRideName({
    super.key,
    required this.recentRideModel,
    required this.isActive,
  });
  final RideModel recentRideModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/bus.svg',
            color: isActive ? AppColors.mainColor : AppColors.darkGray,
            width: 27,
          ),
          SizedBox(width: 10),
          Text(
            '${recentRideModel.lineName} (${recentRideModel.numberOfstations} Stations)',
            style: Styles.black14,
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isActive ? AppColors.secondColor : AppColors.darkGray,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                '${recentRideModel.linePrice} EGP',
                style: Styles.White14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
