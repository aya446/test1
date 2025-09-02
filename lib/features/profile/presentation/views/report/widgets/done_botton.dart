import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class DoneBotton extends StatelessWidget {
  const DoneBotton({
    super.key,
    required this.title,
    this.isActive = false,
    required this.actoin,
  });
  final String title;
  final bool isActive;
  final VoidCallback actoin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: isActive ? actoin : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? AppColors.mainColor : AppColors.textColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(child: Text(title, style: Styles.White16)),
      ),
    );
  }
}
