import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/balance/views/widgts/wallet_balance_body.dart';

class WalletBalanceView extends StatelessWidget {
  const WalletBalanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Wallet', style: Styles.black16),
        centerTitle: true,
      ),
      body: WalletBalanceBody(balance: 0.0),
    );
  }
}
