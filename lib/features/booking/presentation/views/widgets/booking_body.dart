import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/policy_bottom_Sheet.dart';
import 'package:test1/features/booking/presentation/views/widgets/seat_status.dart';
import 'package:test1/features/booking/presentation/views/widgets/seats_section.dart';
import 'package:test1/features/booking/presentation/views/widgets/info_text.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class BookingBody extends StatefulWidget {
  const BookingBody({super.key});

  @override
  State<BookingBody> createState() => _BookingBodyState();
}

class _BookingBodyState extends State<BookingBody> {
  int? selectedSeat;
  int? selectedStandingPosition;
  final List<int> reservedSeats = [1, 3, 8, 10, 30, 19];

  bool get allSeatsReserved =>
      reservedSeats.length + (selectedSeat != null ? 1 : 0) >= 32;

  void onSeatSelected(int seatNumber) {
    if (!reservedSeats.contains(seatNumber)) {
      setState(() {
        selectedSeat = seatNumber;
        selectedStandingPosition = null;
      });
    }
  }

  void onStandingSelected(int positionNumber) {
    setState(() {
      selectedStandingPosition = positionNumber;
      selectedSeat = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Choose your seat', style: Styles.black16),
          const SizedBox(height: 20),
          const SeatStatus(),
          const SizedBox(height: 30),
          SeatsSection(
            allSeatsReserved: allSeatsReserved,
            reservedSeats: reservedSeats,
            selectedSeat: selectedSeat,
            selectedStandingPosition: selectedStandingPosition,
            onSeatSelected: onSeatSelected,
            onStandingSelected: onStandingSelected,
          ),
          const SizedBox(height: 20),
          InfoText(allSeatsReserved: allSeatsReserved),
          DoneBotton(
            title: 'Next',
            isActive: selectedSeat != null || selectedStandingPosition != null,
            actoin: () {
              showModalBottomSheet(
                context: context,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (context) {
                  return const PolicyBottomSheet();
                },
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
