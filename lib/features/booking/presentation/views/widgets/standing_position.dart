import 'package:flutter/material.dart';
import 'package:test1/core/utils/app_colors.dart';

class StandingPosition extends StatefulWidget {
  const StandingPosition({
    super.key,
    required this.selectedPosition,
    required this.onSelect,
  });

  final int? selectedPosition; // 🟠 الموقف المختار
  final Function(int) onSelect; // 🟢 نبعته عشان نحفظ الاختيار

  @override
  State<StandingPosition> createState() => _StandingPositionState();
}

class _StandingPositionState extends State<StandingPosition> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: List.generate(12, (index) {
          bool isRight = index % 2 == 0;
          bool isSelected =
              widget.selectedPosition == index + 1; // 🟠 هل الدائرة دي متحددة؟

          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              children: [
                if (isRight) const Spacer(),
                GestureDetector(
                  onTap: () {
                    widget.onSelect(index + 1); // 🟢 نبعت الاختيار
                  },
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? AppColors
                                .mainColor // 🟠 برتقالي لو متحددة
                          : AppColors.textColor, // 🔘 رمادي فاتح بشكل افتراضي
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                if (!isRight) const Spacer(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
