import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.plan});
  final PlanModel plan;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.25,
      height: size.height * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.03),
        color: AppColors.mainColor,
      ),
      child: Center(child: Text('Subscribe now', style: Styles.White14)),
    );
  }
}
