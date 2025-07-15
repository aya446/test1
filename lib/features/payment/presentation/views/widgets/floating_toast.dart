import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';

class FloatingToast extends StatelessWidget {
  final String message;
  final Color backgroundColor;

  const FloatingToast({
    super.key,
    required this.message,
    this.backgroundColor = Colors.black87,
  });

  static void show(
    BuildContext context,
    String message,
    Duration duration,
    Color backgroundColor,
  ) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 100,
        left: MediaQuery.of(context).size.width * 0.2,
        right: MediaQuery.of(context).size.width * 0.2,
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: FloatingToast(
              message: message,
              backgroundColor: backgroundColor,
            ),
          ),
        ),
      ),
    );

    overlay.insert(overlayEntry);
    Future.delayed(duration, () {
      overlayEntry.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(message, style: Styles.White14),
    );
  }
}
