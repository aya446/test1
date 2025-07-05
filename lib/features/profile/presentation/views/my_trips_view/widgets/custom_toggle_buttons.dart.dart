import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/presentation/views/my_trips_view/widgets/previos_list_view.dart';
import 'package:test1/features/profile/presentation/views/my_trips_view/widgets/upcoming_lists_view.dart';

class CustomToggleButtons extends StatefulWidget {
  const CustomToggleButtons({super.key});

  @override
  State<CustomToggleButtons> createState() => _CustomToggleButtons();
}

class _CustomToggleButtons extends State<CustomToggleButtons> {
  bool isFirstActive = true;

  void activateFirst() {
    setState(() {
      isFirstActive = true;
    });
  }

  void activateSecond() {
    setState(() {
      isFirstActive = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: activateFirst,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: isFirstActive ? AppColors.mainColor : Colors.white,
                  border: Border.all(color: AppColors.mainColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Upcoming',
                    style: isFirstActive ? Styles.White14 : Styles.orange14,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: activateSecond,
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: isFirstActive ? Colors.white : AppColors.mainColor,
                  border: Border.all(color: AppColors.mainColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Previous',
                    style: isFirstActive ? Styles.orange14 : Styles.White14,
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        isFirstActive ? UpcomingListsView() : PreviosListView(),
      ],
    );
  }
}
