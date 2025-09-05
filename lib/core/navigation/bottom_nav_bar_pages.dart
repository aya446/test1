import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/home_body.dart';
import 'package:test1/features/profile/presentation/views/profile_page/profile_view.dart';
import 'package:test1/features/subscription/presentation/views/subscription_view.dart';
import 'package:test1/features/ticket/presentation/views/ticket_view.dart';

final List<Widget> screens = [
  const HomeBody(),
  const TicketView(),
  const SubscriptionView(),
  const ProfileView(),
];
