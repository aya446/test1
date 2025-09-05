// features/subscription/view/widgets/plan_info.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/custom_boton.dart';

class PlanInfo extends StatelessWidget {
  const PlanInfo({super.key, required this.plan});
  final PlanModel plan;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                plan.planName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Text(plan.planType, style: const TextStyle(fontSize: 14)),
              SizedBox(width: size.width * 0.01),
              SvgPicture.asset(plan.planTypeIcon, width: 20, height: 20),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.9,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              plan.description,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            'Number of Tickets per month ${plan.numberOfTickets} Tickets',
            style: const TextStyle(color: Colors.orange, fontSize: 13),
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Text(
                '${plan.price} EGP ',
                style: const TextStyle(color: Colors.green, fontSize: 16),
              ),
              const Text('Per Month', style: TextStyle(fontSize: 14)),
            ],
          ),
          SizedBox(height: 10),
          CustomButton(plan: plan),
        ],
      ),
    );
  }
}
