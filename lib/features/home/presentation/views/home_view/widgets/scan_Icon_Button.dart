import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/app_colors.dart';

class ScanIconButton extends StatelessWidget {
  const ScanIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Colors.white, AppColors.mainColor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.scanner);
        },
        icon: SvgPicture.asset('assets/icons/scan-barcode.svg', height: 30),
      ),
    );
  }
}
