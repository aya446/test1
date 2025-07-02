import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class CostomSearchBar extends StatelessWidget {
  const CostomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search by trip number',
        hintStyle: Styles.gray12,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset('assets/icons/search-normal.svg'),
        ),
        filled: true,
        fillColor: Colors.white,
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
