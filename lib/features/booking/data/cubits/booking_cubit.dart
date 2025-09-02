import 'package:flutter_bloc/flutter_bloc.dart';
part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  BookingCubit() : super(BookingState.initial());

  void selectSeat(int seatNumber) {
    if (!state.reservedSeats.contains(seatNumber)) {
      emit(
        state.copyWith(
          selectedSeat: seatNumber,
          selectedStandingPosition: null,
        ),
      );
    }
  }

  void selectStanding(int positionNumber) {
    emit(
      state.copyWith(
        selectedSeat: null,
        selectedStandingPosition: positionNumber,
      ),
    );
  }
}
