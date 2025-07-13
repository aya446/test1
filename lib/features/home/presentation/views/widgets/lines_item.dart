import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';
import 'package:test1/features/home/presentation/views/widgets/bottom_sheet_body.dart';

class LinesItem extends StatelessWidget {
  const LinesItem({super.key, required this.linesModel});
  final LinesModel linesModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          backgroundColor: Colors.white,
          builder: (context) {
            return BottomSheetBody();
          },
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
          Text(linesModel.lineName, style: Styles.black12),
        ],
      ),
    );
  }
}
