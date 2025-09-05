import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/subscription/data/cubits/subscription_cubit.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/plan_item.dart';

class SubscriptionBody extends StatelessWidget {
  const SubscriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, List<PlanModel>>(
      builder: (context, plans) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Select your plan', style: Styles.black20),
                Row(
                  children: [
                    Text('Your current plan is ', style: Styles.gray14),
                    Text('premium', style: Styles.green14),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: plans.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: PlanItem(plan: plans[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
