import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/custom_boton.dart';

class PlanInfo extends StatelessWidget {
  const PlanInfo({super.key, required this.plan});
  final PlanModel plan;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(plan.planName, style: Styles.black16),
              const Spacer(),
              Text(plan.planType, style: Styles.black14),
              SizedBox(width: size.width * 0.01),
              SvgPicture.asset(plan.planTypeIcon),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.9,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              plan.description,
              style: Styles.gray16,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            'Number of Tickets per month ${plan.numberOfTickets} Tickets',
            style: Styles.orange13,
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Text('${plan.price} EGP ', style: Styles.green16),
              Text('Per Month', style: Styles.black14),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          CustomButton(plan: plan),
        ],
      ),
    );
  }
}
