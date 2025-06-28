import 'package:flutter/material.dart';

class PlanModel {
  final String planName;
  final String planType;
  final String description;
  final String planTypeIcon;
  final Color color;
  final String numberOfTickets;
  final String price;

  PlanModel({
    required this.planName,
    required this.planType,
    required this.description,
    required this.planTypeIcon,
    required this.color,
    required this.numberOfTickets,
    required this.price,
  });
}
