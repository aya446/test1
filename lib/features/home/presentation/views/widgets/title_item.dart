import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';

class TitleItem extends StatelessWidget {
  const TitleItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styles.black17),
          Text("See all", style: Styles.orange13),
        ],
      ),
    );
  }
}
