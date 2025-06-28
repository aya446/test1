import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/plan_item.dart';

class PlanIListViewBuilder extends StatefulWidget {
  const PlanIListViewBuilder({super.key});

  @override
  State<PlanIListViewBuilder> createState() => _PlanIListViewBuilderState();
}

class _PlanIListViewBuilderState extends State<PlanIListViewBuilder> {
  List<PlanModel> planList = [
    PlanModel(
      planName: 'Monthly Plan',
      planType: 'Most Subscribed',
      description:
          'Monthly plan is a plan that you can subscribe to only one time a month for all your tickets',
      planTypeIcon: 'assets/icons/Icon.svg',
      color: AppColors.mainColor,
      numberOfTickets: '30',
      price: '500',
    ),
    PlanModel(
      planName: 'Premium subscription',
      planType: 'Best subscription',
      description:
          'Monthly plan is a plan that you can subscribe to only one time a month for all your tickets',
      planTypeIcon: 'assets/icons/best.svg',
      color: AppColors.secondColor,
      numberOfTickets: '10',
      price: '200',
    ),
    PlanModel(
      planName: 'Standing plan',
      planType: 'Cheap subscription',
      description:
          'Choose the standing plan and you will have access to more busses adn cheaper rides',
      planTypeIcon: 'assets/icons/cheap.svg',
      color: Colors.black,
      numberOfTickets: '100',
      price: '1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: planList.length,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: PlanItem(plan: planList[index]),
        );
      },
    );
  }
}
