import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class BottomSheetBotton extends StatelessWidget {
  const BottomSheetBotton({
    super.key,
    required this.title,
    required this.isOrange,
    required this.isSelected,
    required this.onTap,
  });
  final String title;
  final bool isOrange;
  final bool isSelected;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected && isOrange
                ? AppColors.mainColor
                : isOrange
                ? AppColors.darkGray
                : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: !isSelected && !isOrange
                  ? AppColors.mainColor
                  : Colors.white,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              textAlign: TextAlign.center,
              title,
              style: isOrange ? Styles.White14 : Styles.orange14,
            ),
          ),
        ),
      ),
    );
  }
}
