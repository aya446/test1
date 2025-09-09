import 'dart:io';
import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/data/models/message_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageMoled message;

  const MessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    Widget childWidget;

    if (message.type == MessageType.image) {
      childWidget = Container(
        constraints: const BoxConstraints(maxWidth: 200, maxHeight: 200),
        child: Image.file(File(message.content), fit: BoxFit.cover),
      );
    } else {
      childWidget = Text(
        message.content,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      );
    }

    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: message.isUser ? AppColors.mainColor : AppColors.textColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(message.isUser ? 12 : 12),
            bottomRight: Radius.circular(message.isUser ? 12 : 12),
            topLeft: const Radius.circular(12),
            topRight: const Radius.circular(12),
          ),
        ),
        child: childWidget,
      ),
    );
  }
}
