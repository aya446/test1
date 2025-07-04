import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/home_body.dart';
import 'package:test1/features/profile/presentation/views/profile_home/profile_view.dart';
import 'package:test1/features/subscription/presentation/views/subscription_view.dart';

final List<Widget> screens = [
  const HomeBody(),
  const Center(child: Text('Ticket')),
  const SubscriptionView(),
  const ProfileView(),
];
