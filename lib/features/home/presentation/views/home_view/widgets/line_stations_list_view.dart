import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';
import 'package:test1/features/home/Data/models/ride_model.dart';
import 'package:test1/features/home/presentation/views/all_lines_view/widgets/line_station_item.dart';

class LineStationsListView extends StatelessWidget {
  const LineStationsListView({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  final int? selectedIndex;
  final Function(int) onSelect;

  @override
  Widget build(BuildContext context) {
    final List<LineModel> linesModel = [
      LineModel(
        lineName: 'Zayed Line',
        rides: [
          RideModel(
            lineName: 'Zayed Line',
            departureStation: 'Mobile Gas station, Rehab',
            departureTime: '6:30',
          ),
          RideModel(
            lineName: 'Zayed Line',
            departureStation: 'Hyper One (Front Side)',
            departureTime: '7:30',
          ),
          RideModel(
            lineName: 'Zayed Line',
            departureStation: 'Mobile Gas station, Rehab',
            departureTime: '7:30',
          ),
          RideModel(
            lineName: 'Zayed Line',
            departureStation: 'Hyper One (Front Side)',
            departureTime: '8:00',
          ),
          RideModel(
            lineName: 'Zayed Line',
            departureStation: 'Mobile Gas station, Rehab',
            departureTime: '8:00',
          ),
        ],
      ),
    ];

    final rides = linesModel[0].rides ?? [];

    return ListView.builder(
      itemCount: rides.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            onSelect(index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: LineStationItem(
              stationName: rides[index].departureStation ?? "No Station",
              stationTime: rides[index].departureTime ?? "No Time",
              isSelected: isSelected,
            ),
          ),
        );
      },
    );
  }
}
