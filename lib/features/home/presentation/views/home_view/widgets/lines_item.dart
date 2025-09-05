import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';

class LinesItem extends StatelessWidget {
  const LinesItem({super.key, required this.lineModel});
  final LineModel lineModel;

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
      child: Column(
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
          const SizedBox(height: 7),
          Text(lineModel.lineName, style: Styles.black12),
        ],
      ),
    );
  }
}




/*showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          backgroundColor: Colors.white,
          builder: (context) {
            return BottomSheetBody();
          },
        );*/