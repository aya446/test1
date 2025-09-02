part of 'booking_cubit.dart';

class BookingState {
  final int? selectedSeat;
  final int? selectedStandingPosition;
  final List<int> reservedSeats;

  bool get allSeatsReserved =>
      reservedSeats.length + (selectedSeat != null ? 1 : 0) >= 32;

  BookingState({
    required this.selectedSeat,
    required this.selectedStandingPosition,
    required this.reservedSeats,
  });

  factory BookingState.initial() {
    return BookingState(
      selectedSeat: null,
      selectedStandingPosition: null,
      reservedSeats: [1, 3, 8, 10, 30, 19],
    );
  }

  BookingState copyWith({
    int? selectedSeat,
    int? selectedStandingPosition,
    List<int>? reservedSeats,
  }) {
    return BookingState(
      selectedSeat: selectedSeat ?? this.selectedSeat,
      selectedStandingPosition:
          selectedStandingPosition ?? this.selectedStandingPosition,
      reservedSeats: reservedSeats ?? this.reservedSeats,
    );
  }
}
