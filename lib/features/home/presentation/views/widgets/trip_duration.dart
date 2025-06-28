import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/trip_model.dart';

class TripDuration extends StatelessWidget {
  const TripDuration({super.key, required this.trip});
  final TripModel trip;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 70, height: 2, color: AppColors.secondColor),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.secondColor, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${trip.duration}', style: Styles.green12),
          ),
        ),
        Container(width: 70, height: 2, color: AppColors.secondColor),
      ],
    );
  }
}
