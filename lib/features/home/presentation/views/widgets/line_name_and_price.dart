import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';

class LineNameAndPrice extends StatelessWidget {
  const LineNameAndPrice({
    super.key,
    required this.LineName,
    required this.price,
  });
  final String LineName, price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/bus.svg',
            color: AppColors.mainColor,
            width: 27,
          ),
          SizedBox(width: 10),
          Text('$LineName 1 (5 Stations)', style: Styles.black14),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.secondColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text('$price EGP', style: Styles.White14),
            ),
          ),
        ],
      ),
    );
  }
}
