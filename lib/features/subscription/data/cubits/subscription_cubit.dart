import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/subscription/data/models/plan_model.dart';

class SubscriptionCubit extends Cubit<List<PlanModel>> {
  SubscriptionCubit() : super([]);

  void loadPlans() {
    final plans = [
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
            'Premium subscription gives you more flexibility and features',
        planTypeIcon: 'assets/icons/best.svg',
        color: Colors.green,
        numberOfTickets: '10',
        price: '200',
      ),
      PlanModel(
        planName: 'Standing plan',
        planType: 'Cheap subscription',
        description:
            'Choose the standing plan and you will have access to cheaper rides',
        planTypeIcon: 'assets/icons/cheap.svg',
        color: Colors.black,
        numberOfTickets: '100',
        price: '1',
      ),
    ];

    emit(plans);
  }
}
