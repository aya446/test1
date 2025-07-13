import 'package:flutter/material.dart';
import 'package:test1/features/booking/presentation/views/widgets/seats_grid_view.dart';
import 'package:test1/features/booking/presentation/views/widgets/standing_position.dart';

class SeatsSection extends StatelessWidget {
  final bool allSeatsReserved;
  final List<int> reservedSeats;
  final int? selectedSeat;
  final int? selectedStandingPosition;
  final Function(int) onSeatSelected;
  final Function(int) onStandingSelected;

  const SeatsSection({
    super.key,
    required this.allSeatsReserved,
    required this.reservedSeats,
    required this.selectedSeat,
    required this.selectedStandingPosition,
    required this.onSeatSelected,
    required this.onStandingSelected,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height * .6,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            SeatsGridView(
              initialNumber: 1,
              reservedSeats: reservedSeats,
              selectedSeat: selectedSeat,
              onSeatSelected: onSeatSelected,
            ),
            const SizedBox(width: 10),
            if (allSeatsReserved)
              StandingPosition(
                selectedPosition: selectedStandingPosition,
                onSelect: onStandingSelected,
              )
            else
              const SizedBox(width: 80),
            const SizedBox(width: 10),
            SeatsGridView(
              initialNumber: 17,
              reservedSeats: reservedSeats,
              selectedSeat: selectedSeat,
              onSeatSelected: onSeatSelected,
            ),
          ],
        ),
      ),
    );
  }
}
