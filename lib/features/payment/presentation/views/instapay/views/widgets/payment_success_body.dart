import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class PaymentSuccessBody extends StatelessWidget {
  const PaymentSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/done.svg'),
          SizedBox(height: 30),
          Text('Done', style: Styles.black24),
          SizedBox(height: 15),
          Text(
            textAlign: TextAlign.center,
            'We will notify you when the transaction is confirmed',
            style: Styles.black20,
          ),
          SizedBox(height: 50),
          Spacer(),
          DoneBotton(
            title: 'Done',
            actoin: () {
              Navigator.of(context).pushNamed(AppRoutes.home);
            },
            isActive: true,
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
