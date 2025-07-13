import 'package:flutter/material.dart';

class SeatStatusItem extends StatelessWidget {
  const SeatStatusItem({
    super.key,
    required this.color,
    required this.textStyle,
    required this.text,
  });
  final String text;
  final Color color;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: textStyle),
        SizedBox(width: 8),
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
