import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';

class LinesItem extends StatelessWidget {
  const LinesItem({super.key, required this.linaName});
  final String linaName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.mainColor,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset('assets/icons/bus.svg'),
          ),
        ),
        SizedBox(height: 7),
        Text(linaName, style: Styles.black12),
      ],
    );
  }
}
