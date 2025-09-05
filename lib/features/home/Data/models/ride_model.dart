class RideModel {
  final String lineName;
  final String? linePrice;
  final String? numberOfstations;
  final String? departureTime;
  final String? arrivalTime;
  final String? duration;
  final String? departureArea;
  final String? arrivalArea;
  final String? departureStation;
  final String? arrivalStation;
  final String? date;
  final String? tripNumber;
  final String? seatNumber;
  final String? paymentStatus;

  RideModel({
    this.paymentStatus,
    this.date,
    this.seatNumber,
    this.tripNumber,
    required this.lineName,
    this.linePrice,
    this.numberOfstations,
    this.departureTime,
    this.arrivalTime,
    this.duration,
    this.departureArea,
    this.arrivalArea,
    this.departureStation,
    this.arrivalStation,
  });
}
