import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/wallet/views/widgets/payment_history_list_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/wallet/views/widgets/wallet_balance.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WalletBalance(balance: '1000.90'),
          SizedBox(height: 20),
          Text('History', style: Styles.black16),
          SizedBox(height: 20),
          Expanded(child: PaymentHistoryListView()),
          Spacer(),
          DoneBotton(
            title: 'Add funds',
            actoin: () {
              Navigator.pushNamed(context, AppRoutes.walletBalance);
            },
            isActive: true,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
