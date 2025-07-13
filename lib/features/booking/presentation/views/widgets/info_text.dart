import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';

class InfoText extends StatelessWidget {
  final bool allSeatsReserved;

  const InfoText({super.key, required this.allSeatsReserved});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: allSeatsReserved
          ? Text(
              '• All seats are taken. The booking will be for standing position.',
              style: Styles.orange14,
            )
          : const SizedBox(),
    );
  }
}
