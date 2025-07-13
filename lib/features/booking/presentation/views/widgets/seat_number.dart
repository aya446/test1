import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class SeatNumber extends StatelessWidget {
  const SeatNumber({
    super.key,
    required this.number,
    this.isReserved = false,
    this.isSelected = false,
  });

  final String number;
  final bool isReserved;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    Color seatColor = AppColors.textColor;
    if (isReserved) seatColor = AppColors.darkGray;
    if (isSelected) seatColor = AppColors.mainColor;

    return Column(
      children: [
        Container(
          width: 50,
          height: 40,
          decoration: BoxDecoration(
            color: seatColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              number,
              style: isSelected || isReserved ? Styles.White12 : Styles.black12,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Container(
          width: 50,
          height: 10,
          decoration: BoxDecoration(
            color: seatColor,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ],
    );
  }
}
