import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/data/cubits/booking_cubit.dart';
import 'package:test1/features/booking/presentation/views/widgets/policy_bottom_Sheet.dart';
import 'package:test1/features/booking/presentation/views/widgets/seat_status.dart';
import 'package:test1/features/booking/presentation/views/widgets/seats_section.dart';
import 'package:test1/features/booking/presentation/views/widgets/info_text.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingCubit, BookingState>(
      builder: (context, state) {
        final cubit = context.read<BookingCubit>();
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
                allSeatsReserved: state.allSeatsReserved,
                reservedSeats: state.reservedSeats,
                selectedSeat: state.selectedSeat,
                selectedStandingPosition: state.selectedStandingPosition,
                onSeatSelected: cubit.selectSeat,
                onStandingSelected: cubit.selectStanding,
              ),
              const SizedBox(height: 20),
              InfoText(allSeatsReserved: state.allSeatsReserved),
              DoneBotton(
                title: 'Next',
                isActive:
                    state.selectedSeat != null ||
                    state.selectedStandingPosition != null,
                actoin: () {
                  showModalBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return PolicyBottomSheet(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            AppRoutes.downloadTicket,
                          );
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
