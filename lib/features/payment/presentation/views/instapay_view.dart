import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/payment/presentation/views/widgets/instapay_body.dart';

class InstapayView extends StatelessWidget {
  const InstapayView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Wallet', style: Styles.black16),
        centerTitle: true,
      ),
      body: InstapayBody(),
    );
  }
}
