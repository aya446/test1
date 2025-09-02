import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/recent_ride_model.dart';
import 'package:test1/features/home/presentation/views/widgets/recent_ride_card.dart';

class PreviosListView extends StatelessWidget {
  const PreviosListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<RecentRideModel> tripsList = [
      RecentRideModel(
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
        tripNumber: 'Yesterday',
      ),
      RecentRideModel(
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
        date: '112233',
        tripNumber: '12/12/2023',
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
            RecentRideCard(recentRideModel: tripsList[index], isActive: false),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Journey number ', style: Styles.gray12),
                Text('#${tripsList[index].date!}', style: Styles.darkGray12),
              ],
            ),
            SizedBox(height: 20),
          ],
        );
      },
    );
  }
}
