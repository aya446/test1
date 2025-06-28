import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/subscription/presentation/views/widgets/plan_info.dart';

class PlanItem extends StatelessWidget {
  const PlanItem({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.9,
      height: size.height * 0.261,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.mainColor),
      ),
      child: Column(
        children: [
          PlanInfo(planName: 'Monthly Plan', planType: 'Most Subscribed'),
        ],
      ),
    );
  }
}
