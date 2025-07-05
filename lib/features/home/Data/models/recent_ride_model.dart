class RecentRideModel {
  final String lineName;
  final String linePrice;
  final String numberOfstations;
  final String departureTime;
  final String arrivalTime;
  final String duration;
  final String departureArea;
  final String arrivalArea;
  final String departureStation;
  final String arrivalStation;
  final String? date;
  final String? tripNumber;

  RecentRideModel({
    this.date,
    this.tripNumber,
    required this.lineName,
    required this.linePrice,
    required this.numberOfstations,
    required this.departureTime,
    required this.arrivalTime,
    required this.duration,
    required this.departureArea,
    required this.arrivalArea,
    required this.departureStation,
    required this.arrivalStation,
  });
}
