import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';

class WalletBalance extends StatelessWidget {
  const WalletBalance({super.key, required this.balance});
  final String balance;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .1,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Wallet balance', style: Styles.White12),
                Spacer(),
                SvgPicture.asset('assets/icons/refresh-2.svg'),
              ],
            ),
            Spacer(),
            Text("$balance EGP", style: Styles.White24),
          ],
        ),
      ),
    );
  }
}
