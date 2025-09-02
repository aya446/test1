import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/vodafone/views/widgets/send_vodafon_data_body.dart';

class SendVodafonDataView extends StatelessWidget {
  const SendVodafonDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Wallet', style: Styles.black16),
        centerTitle: true,
      ),
      body: SendVodafonDataBody(),
    );
  }
}
