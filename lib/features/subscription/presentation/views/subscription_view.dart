import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/subscription/data/cubits/subscription_cubit.dart';
import 'package:test1/features/subscription/presentation/views/widgets/subscription_body.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscriptionCubit()..loadPlans(),
      child: const Scaffold(body: SubscriptionBody()),
    );
  }
}
