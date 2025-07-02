import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class CustomElevatedBottun extends StatelessWidget {
  const CustomElevatedBottun({
    super.key,
    required this.isButtonEnabled,
    required this.selectedReason,
    required this.otherText,
  });

  final bool isButtonEnabled;
  final String? selectedReason;
  final String otherText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: isButtonEnabled
            ? () {
                Navigator.pushNamed(context, AppRoutes.reportSuccess);
              }
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isButtonEnabled ? AppColors.mainColor : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(child: Text('Send', style: Styles.White20)),
      ),
    );
  }
}
