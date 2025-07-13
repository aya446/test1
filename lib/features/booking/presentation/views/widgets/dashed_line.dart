import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          35,
          (index) => Container(width: 5, height: 1, color: Colors.white),
        ),
      ),
    );
  }
}
