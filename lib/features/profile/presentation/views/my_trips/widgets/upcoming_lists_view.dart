import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/recent_ride_card.dart';

class UpcomingListsView extends StatelessWidget {
  const UpcomingListsView({super.key});
  @override
  Widget build(BuildContext context) {
    List<RideModel> tripsList = [
      RideModel(
        lineName: "Zayed line",
        linePrice: '250',
        numberOfstations: '5',
        departureTime: '10:00 AM',
        arrivalTime: '12:00 PM',
        duration: '2 Hours',
        departureArea: 'Giza',
        arrivalArea: 'Ramsis',
        departureStation: 'Giza Station',
        arrivalStation: 'Ramsis Station',
        date: '123456',
        tripNumber: 'Today',
      ),
    ];
    return ListView.builder(
      itemCount: tripsList.length,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(tripsList[index].tripNumber!, style: Styles.black14),
            SizedBox(height: 10),
            RecentRideCard(recentRideModel: tripsList[index], isActive: true),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Journey number ', style: Styles.gray12),
                Text('#${tripsList[index].date!}', style: Styles.darkGray12),
              ],
            ),
          ],
        );
      },
    );
  }
}
