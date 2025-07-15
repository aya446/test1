import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/payment/data/models/bank_info_model.dart';
import 'package:test1/features/payment/presentation/views/instapay/views/widgets/bank_info_card.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class VodafonBody extends StatelessWidget {
  const VodafonBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'To make successful transactions copy this information',
            style: Styles.orange16,
          ),
          SizedBox(height: 20),
          BankInfoCard(
            bankInfoModel: BankInfoModel(
              title: 'Vodafone wallet number',
              info: '01034638287',
            ),
          ),
          Spacer(),
          DoneBotton(
            title: 'Confirm Transfer',
            actoin: () {
              Navigator.pushNamed(context, AppRoutes.sendVodafon);
            },
            isActive: true,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
