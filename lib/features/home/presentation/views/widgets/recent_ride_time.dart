import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/recent_ride_model.dart';
import 'package:test1/features/home/presentation/views/widgets/trip_duration.dart';

class RecentRideTime extends StatelessWidget {
  const RecentRideTime({
    super.key,
    required this.recentRideModel,
    required this.isActive,
  });
  final RecentRideModel recentRideModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            children: [
              Text(recentRideModel.departureTime, style: Styles.black14),
              SizedBox(height: 7),
              Text(recentRideModel.departureArea, style: Styles.black14),
              SizedBox(height: 7),
              Text(recentRideModel.departureStation, style: Styles.gray12),
            ],
          ),
          SizedBox(width: 10),
          TripDuration(recentRideModel: recentRideModel, isActive: isActive),
          SizedBox(width: 10),
          Column(
            children: [
              Text(recentRideModel.arrivalTime, style: Styles.black14),
              SizedBox(height: 7),
              Text(recentRideModel.arrivalArea, style: Styles.black14),
              SizedBox(height: 7),
              Text(recentRideModel.arrivalStation, style: Styles.gray12),
            ],
          ),
        ],
      ),
    );
  }
}
