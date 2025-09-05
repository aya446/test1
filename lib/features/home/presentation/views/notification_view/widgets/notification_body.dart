import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/notification_view/widgets/have_no_trips_card.dart';
import 'package:test1/features/home/presentation/views/notification_view/widgets/next_trip.dart';
import 'package:test1/features/home/presentation/views/notification_view/widgets/notification_list_view.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> trips = [];
    bool haveTrips = trips.isEmpty;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          haveTrips ? HaveNoTripsCard() : NextTrip(),
          SizedBox(height: 15),
          NotificatioListView(),
        ],
      ),
    );
  }
}
