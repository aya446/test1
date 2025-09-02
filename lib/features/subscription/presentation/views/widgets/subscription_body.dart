import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/subscription/data/cubits/subscription_cubit.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';
import 'package:test1/features/subscription/presentation/views/widgets/plan_item.dart';

class SubscriptionBody extends StatelessWidget {
  const SubscriptionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionCubit, List<PlanModel>>(
      builder: (context, plans) {
        if (plans.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: plans.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: PlanItem(plan: plans[index]),
            );
          },
        );
      },
    );
  }
}
