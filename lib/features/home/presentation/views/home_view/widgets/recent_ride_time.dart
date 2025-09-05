import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/white_trip_duration.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/trip_duration.dart';

class RecentRideTime extends StatelessWidget {
  const RecentRideTime({
    super.key,
    required this.recentRideModel,
    required this.isActive,
    required this.isWhite,
  });

  final RideModel recentRideModel;
  final bool isActive;
  final bool isWhite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                recentRideModel.departureTime ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
              const SizedBox(height: 7),
              Text(
                recentRideModel.departureArea ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
              const SizedBox(height: 7),
              Text(
                recentRideModel.departureStation ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
            ],
          ),
          isWhite
              ? WhiteTripDuration(recentRideModel: recentRideModel)
              : TripDuration(
                  recentRideModel: recentRideModel,
                  isActive: isActive,
                ),
          Column(
            children: [
              Text(
                recentRideModel.arrivalTime ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
              const SizedBox(height: 7),
              Text(
                recentRideModel.arrivalArea ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
              const SizedBox(height: 7),
              Text(
                recentRideModel.arrivalStation ?? "",
                style: isWhite ? Styles.White14 : Styles.black14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
