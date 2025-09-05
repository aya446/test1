import 'package:test1/features/home/Data/models/ride_model.dart';

class LineModel {
  final String lineName;
  final List<RideModel>? rides;

  LineModel({required this.lineName, this.rides});
}
