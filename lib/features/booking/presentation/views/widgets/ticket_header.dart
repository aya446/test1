import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';

class TicketHeader extends StatelessWidget {
  const TicketHeader({super.key, required this.recentRideModel});
  final RideModel recentRideModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/icons/bus.svg'),
        SizedBox(width: 5),
        Text(recentRideModel.lineName, style: Styles.White12),
        Text(
          "( ${recentRideModel.numberOfstations} Stations )",
          style: Styles.White12,
        ),
        Spacer(),
        Container(
          width: 55,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            textAlign: TextAlign.center,
            'Seat ${recentRideModel.seatNumber}',
            style: Styles.White14,
          ),
        ),
        SizedBox(width: 8),
        Container(
          width: 55,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            textAlign: TextAlign.center,
            recentRideModel.paymentStatus!,
            style: Styles.White14,
          ),
        ),
      ],
    );
  }
}
