import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';

class LinesItem2 extends StatelessWidget {
  const LinesItem2({
    super.key,
    required this.lineModel,
    required this.linesNumber,
  });
  final LineModel lineModel;
  final String linesNumber;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          AppRoutes.linesView,
          arguments: lineModel.lineName,
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            SvgPicture.asset(
              'assets/icons/bus.svg',
              color: AppColors.mainColor,
            ),
            SizedBox(width: 10),
            Row(
              children: [
                Text(lineModel.lineName, style: Styles.black12),
                Text('(${linesNumber})', style: Styles.black12),
              ],
            ),
            Spacer(),
            SvgPicture.asset(
              'assets/icons/backArrow.svg',
              color: AppColors.mainColor,
            ),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
