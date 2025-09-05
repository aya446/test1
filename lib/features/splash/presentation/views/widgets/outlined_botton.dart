import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';

class OutLinedBotton extends StatelessWidget {
  const OutLinedBotton({super.key, required this.title, required this.actoin});
  final String title;
  final VoidCallback actoin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: actoin,
        style: ElevatedButton.styleFrom(
          side: const BorderSide(color: Colors.white),
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Center(child: Text(title, style: Styles.White16)),
      ),
    );
  }
}
