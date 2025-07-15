import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/payment/presentation/views/widgets/custom_border_button.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class WalletBalanceBody extends StatelessWidget {
  const WalletBalanceBody({super.key, required this.balance});
  final double balance;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Wallet balance', style: Styles.black14),
              Text('$balance EGP', style: Styles.black24),
              Spacer(),
              if (balance == 0.0)
                CustomBorderButton(title: 'pay letter in cash', actoin: () {}),
              SizedBox(height: 10),
              DoneBotton(
                title: 'Add funds',
                actoin: () {
                  Navigator.pushNamed(context, AppRoutes.paymentMethods);
                },
                isActive: true,
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
