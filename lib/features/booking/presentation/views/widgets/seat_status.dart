import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/booking/presentation/views/widgets/seat_status_item.dart';

class SeatStatus extends StatelessWidget {
  const SeatStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SeatStatusItem(
          text: 'Booked',
          color: AppColors.darkGray,
          textStyle: Styles.darkGray14,
        ),
        SeatStatusItem(
          text: 'Available',
          color: AppColors.textColor,
          textStyle: Styles.darkGray14,
        ),
        SeatStatusItem(
          text: 'Selected',
          color: AppColors.mainColor,
          textStyle: Styles.orange14,
        ),
      ],
    );
  }
}
