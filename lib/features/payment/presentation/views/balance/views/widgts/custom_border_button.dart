import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class CustomBorderButton extends StatelessWidget {
  const CustomBorderButton({
    super.key,
    required this.title,
    required this.actoin,
  });
  final String title;
  final VoidCallback actoin;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: actoin,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: AppColors.mainColor),
          ),
        ),
        child: Center(child: Text(title, style: Styles.orange16)),
      ),
    );
  }
}
