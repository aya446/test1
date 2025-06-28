import 'package:flutter/material.dart';
import 'package:test1/features/subscription/presentation/views/widgets/subscription_body.dart';

class SubscriptionView extends StatelessWidget {
  const SubscriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SubscriptionBody(plan: 'primum');
  }
}
