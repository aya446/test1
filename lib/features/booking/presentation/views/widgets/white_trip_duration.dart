import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';

class WhiteTripDuration extends StatelessWidget {
  const WhiteTripDuration({super.key, required this.recentRideModel});
  final RideModel recentRideModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 60, height: 2, color: Colors.white),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(recentRideModel.duration ?? '', style: Styles.black12),
          ),
        ),
        Container(width: 60, height: 2, color: Colors.white),
      ],
    );
  }
}
