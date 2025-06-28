import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/subscription/presentation/views/widgets/custom_boton.dart';

class PlanInfo extends StatelessWidget {
  const PlanInfo({super.key, required this.planName, required this.planType});
  final String planName;
  final String planType;

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
              Text(planName, style: Styles.black16),
              const Spacer(),
              Text(planType, style: Styles.black14),
              SizedBox(width: size.width * 0.01),
              SvgPicture.asset(
                'assets/icons/Icon.svg',
                width: size.width * 0.04,
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          SizedBox(
            width: size.width * 0.9,
            child: Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Monthly plan is a plan that you can subscribe to only one time a month for all your tickets",
              style: Styles.gray16,
            ),
          ),
          SizedBox(height: size.height * 0.01),
          Text(
            'Number of Tickets per month 30 Tickets',
            style: Styles.orange13,
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              Text('500 EGP ', style: Styles.green16),
              Text('Per Month', style: Styles.black14),
            ],
          ),
          SizedBox(height: size.height * 0.02),
          const CustomButton(),
        ],
      ),
    );
  }
}
