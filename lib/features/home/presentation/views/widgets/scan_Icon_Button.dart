import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/constants.dart';

class ScanIconButton extends StatelessWidget {
  const ScanIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.white, AppColors.mainColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/scan-barcode.svg', height: 30),
      ),
    );
  }
}
