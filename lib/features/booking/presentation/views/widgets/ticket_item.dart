import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/booking/presentation/views/widgets/dashed_line.dart';
import 'package:test1/features/booking/presentation/views/widgets/ticket_header.dart';
import 'package:test1/features/home/Data/models/recent_ride_model.dart';
import 'package:test1/features/home/presentation/views/widgets/recent_ride_time.dart';

class TicketItem extends StatelessWidget {
  const TicketItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final RecentRideModel recentRideModel = RecentRideModel(
      lineName: "Zayed line  ",
      linePrice: '250',
      numberOfstations: '5',
      departureTime: '10:00 AM',
      arrivalTime: '12:00 PM',
      duration: '2 Hours',
      departureArea: 'Giza',
      arrivalArea: 'Ramsis',
      departureStation: 'Giza Station',
      arrivalStation: 'Ramsis Station',
      paymentStatus: 'Paid',
      seatNumber: '1',
      date: '',
      tripNumber: '123456',
    );
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height * .26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.mainColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  bottom: 20,
                  top: 20,
                  right: 12,
                ),
                child: Column(
                  children: [
                    TicketHeader(recentRideModel: recentRideModel),
                    SizedBox(height: 10),
                    RecentRideTime(
                      isWhite: true,
                      recentRideModel: recentRideModel,
                      isActive: true,
                    ),
                    Spacer(),
                    SvgPicture.asset('assets/images/bar_code2.svg', width: 300),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Journey number #${recentRideModel.tripNumber}',
              style: Styles.darkGray12,
            ),
          ],
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: ((size.height * .26) / 2.8) + 15,
          child: const DashedLine(),
        ),
        Positioned(
          left: -15,
          bottom: (size.height * .26) / 2.8,
          child: CircleAvatar(radius: 15, backgroundColor: Colors.white),
        ),
        Positioned(
          right: -15,
          bottom: (size.height * .26) / 2.8,
          child: CircleAvatar(radius: 15, backgroundColor: Colors.white),
        ),
      ],
    );
  }
}
