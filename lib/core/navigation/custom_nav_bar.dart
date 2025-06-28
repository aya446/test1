import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/app_colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        onTap: onTap,
        selectedItemColor: AppColors.mainColor,
        unselectedItemColor: AppColors.textColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: currentIndex == 0
                  ? AppColors.mainColor
                  : AppColors.textColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/ticket-2.svg',
              color: currentIndex == 1
                  ? AppColors.mainColor
                  : AppColors.textColor,
            ),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/crown.svg',
              color: currentIndex == 2
                  ? AppColors.mainColor
                  : AppColors.textColor,
            ),
            label: 'Subscription',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: currentIndex == 3
                  ? AppColors.mainColor
                  : AppColors.textColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
