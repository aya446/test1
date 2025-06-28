import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/subscription/presentation/views/widgets/blan_list_view_builder.dart';

class SubscriptionBody extends StatelessWidget {
  const SubscriptionBody({super.key, required this.plan});
  final String plan;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Select Your Plan', style: Styles.black20),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Your current plan is ', style: Styles.gray16),
                  Text(plan, style: Styles.green16),
                ],
              ),
              SizedBox(height: 10),
              PlanIListViewBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
