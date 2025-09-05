import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/recent_ride_card.dart';

class LinesBody extends StatelessWidget {
  const LinesBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<RideModel> ridesList = [
      RideModel(
        lineName: "Zayed Line 1",
        numberOfstations: "5 Stations",
        linePrice: "250 EGP",
        departureArea: "Talaat Harb",
        departureTime: "7:30 PM",
        duration: "2 Hours",
        arrivalTime: "8:30 PM",
        arrivalArea: "Ramses",
        departureStation: "Bab AL louq",
        arrivalStation: "Mobile station",
      ),
      RideModel(
        lineName: "Zayed Line 2",
        numberOfstations: "12 Stations",
        linePrice: "250 EGP",
        departureArea: "Talaat Harb",
        departureTime: "8:30 PM",
        duration: "2 Hours",
        arrivalTime: "10:30 PM",
        arrivalArea: "Ramses",
        departureStation: "Bab AL louq",
        arrivalStation: "Mobile station",
      ),
      RideModel(
        lineName: "Zayed Line 1 night",
        numberOfstations: "5 Stations",
        linePrice: "250 EGP",
        departureArea: "Talaat Harb",
        departureTime: "10:30 PM",
        duration: "2 Hours",
        arrivalTime: "11:30 PM",
        arrivalArea: "Ramses",
        departureStation: "Bab AL louq",
        arrivalStation: "Mobile station",
      ),
      RideModel(
        lineName: "Zayed Line 4",
        numberOfstations: "5 Stations",
        linePrice: "250 EGP",
        departureArea: "Talaat Harb",
        departureTime: "7:30 PM",
        duration: "2 Hours",
        arrivalTime: "8:30 PM",
        arrivalArea: "Ramses",
        departureStation: "Bab AL louq",
        arrivalStation: "Mobile station",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: RecentRideCard(
                    recentRideModel: ridesList[index],
                    isActive: true,
                  ),
                );
              },
              itemCount: ridesList.length,
            ),
          ),
        ],
      ),
    );
  }
}
