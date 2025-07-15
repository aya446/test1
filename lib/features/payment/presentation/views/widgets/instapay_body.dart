import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/payment/presentation/views/widgets/bank_info_list_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class InstapayBody extends StatelessWidget {
  const InstapayBody({super.key});

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
          SizedBox(height: 10),
          BankInfoListView(),
          Text(
            'You have to copy the Account number not name to transfer the money',
            style: Styles.darkGray14,
          ),
          Spacer(),
          DoneBotton(
            title: 'Confirm Transfer',
            actoin: () {
              Navigator.pushNamed(context, AppRoutes.sendInstapay);
            },
            isActive: true,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
