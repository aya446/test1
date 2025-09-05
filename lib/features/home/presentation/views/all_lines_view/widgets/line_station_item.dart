import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';

class LineStationItem extends StatelessWidget {
  const LineStationItem({
    super.key,
    required this.stationName,
    required this.stationTime,
    required this.isSelected,
  });

  final String stationName;
  final String stationTime;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(isSelected ? 10.0 : 0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffFEEFE8) : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/Location.svg'),
            SizedBox(width: 10),
            Text(stationName, style: Styles.black14),
            Spacer(),
            Text(stationTime, style: Styles.black14),
          ],
        ),
      ),
    );
  }
}
