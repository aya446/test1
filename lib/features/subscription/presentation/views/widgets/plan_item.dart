import 'package:flutter/material.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/plan_info.dart';

class PlanItem extends StatelessWidget {
  const PlanItem({super.key, required this.plan});
  final PlanModel plan;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width * 0.9,
      height: size.height * 0.261,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: plan.color),
      ),
      child: Column(children: [PlanInfo(plan: plan)]),
    );
  }
}
