import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';
import 'package:test1/features/home/presentation/views/widgets/line_station_item.dart';

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
    final List<LinesModel> linesModel = [
      LinesModel(
        lineName: 'Zayed Lines',
        stations: [
          'Mobile Gas station, Rehab',
          'Hyper One(Front Side)',
          'Mobile Gas station, Rehab',
          'Hyper One(Front Side)',
          'Mobile Gas station, Rehab',
        ],
        time: ['6:30', '7:30', '7:30', '8:00', '8:00'],
      ),
    ];

    return ListView.builder(
      itemCount: linesModel[0].stations!.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        bool isSelected = selectedIndex == index;
        return GestureDetector(
          onTap: () {
            onSelect(index);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: LineStationItem(
              stationName: linesModel[0].stations![index],
              stationTime: linesModel[0].time![index],
              isSelected: isSelected,
            ),
          ),
        );
      },
    );
  }
}
