import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/trip_model.dart';
import 'package:test1/features/home/presentation/views/widgets/trip_duration.dart';

class TripTime extends StatefulWidget {
  const TripTime({super.key});

  @override
  State<TripTime> createState() => _TripTimeState();
}

class _TripTimeState extends State<TripTime> {
  final TripModel trip = TripModel(
    departureTime: '10:00 AM',
    arrivalTime: '12:00 PM',
    duration: '2 Hours',
    tripName: 'zayed Line',
    departureArea: 'Giza',
    arrivalArea: 'Ramsis',
    departureStation: 'Giza Station',
    arrivalStation: 'Ramsis Station',
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Column(
            children: [
              Text(trip.departureTime, style: Styles.black14),
              SizedBox(height: 7),
              Text(trip.departureArea, style: Styles.black14),
              SizedBox(height: 7),
              Text(trip.departureStation, style: Styles.gray12),
            ],
          ),
          SizedBox(width: 10),
          TripDuration(trip: trip),
          SizedBox(width: 10),
          Column(
            children: [
              Text(trip.arrivalTime, style: Styles.black14),
              SizedBox(height: 7),
              Text(trip.arrivalArea, style: Styles.black14),
              SizedBox(height: 7),
              Text(trip.arrivalStation, style: Styles.gray12),
            ],
          ),
        ],
      ),
    );
  }
}
