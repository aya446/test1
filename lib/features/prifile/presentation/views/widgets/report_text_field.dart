import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';

class ReportTextField extends StatelessWidget {
  const ReportTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.top,
      minLines: 4,
      maxLines: 7,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        border: outLineInputBoarder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color(0xFF000000)),
        ),
        enabledBorder: outLineInputBoarder(),
      ),
      onChanged: (value) {},
    );
  }

  OutlineInputBorder outLineInputBoarder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.textColor),
    );
  }
}
