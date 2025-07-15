import 'package:flutter/material.dart';

class SettingsCardModel {
  final String icon;
  final String name;
  final String description;
  final String? status;
  final VoidCallback onTap;
  final Color? iconColor;

  SettingsCardModel({
    required this.icon,
    required this.name,
    required this.description,
    required this.onTap,
    this.iconColor,
    this.status,
  });
}
