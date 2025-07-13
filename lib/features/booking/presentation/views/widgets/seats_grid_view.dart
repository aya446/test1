import 'package:flutter/material.dart';
import 'package:test1/features/booking/presentation/views/widgets/seat_number.dart';

class SeatsGridView extends StatelessWidget {
  const SeatsGridView({
    super.key,
    required this.initialNumber,
    required this.reservedSeats,
    required this.selectedSeat,
    required this.onSeatSelected,
  });

  final int initialNumber;
  final List<int> reservedSeats;
  final int? selectedSeat;
  final Function(int) onSeatSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(16, (index) {
          int seatNumber = index + initialNumber;
          bool isReserved = reservedSeats.contains(seatNumber);
          bool isSelected = selectedSeat == seatNumber;

          return GestureDetector(
            onTap: () {
              if (!isReserved) {
                onSeatSelected(seatNumber);
              }
            },
            child: SeatNumber(
              number: '$seatNumber',
              isReserved: isReserved,
              isSelected: isSelected,
            ),
          );
        }),
      ),
    );
  }
}
