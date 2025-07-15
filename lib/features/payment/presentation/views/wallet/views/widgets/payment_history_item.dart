import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/payment/data/models/payment_history_model.dart';

class PaymentHistoryItem extends StatelessWidget {
  const PaymentHistoryItem({super.key, required this.paymentHistoryModel});
  final PaymentHistoryModel paymentHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: paymentHistoryModel.isPositive
              ? Color(0xff4ABB69)
              : Color(0xffC21919),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Row(
          children: [
            paymentHistoryModel.isPositive
                ? SvgPicture.asset('assets/icons/positive.svg')
                : SvgPicture.asset('assets/icons/nigative.svg'),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(paymentHistoryModel.title, style: Styles.black14),
                SizedBox(height: 5),
                Text(paymentHistoryModel.date, style: Styles.gray12),
              ],
            ),
            Spacer(),
            Text('${paymentHistoryModel.amount} EGP', style: Styles.black16),
          ],
        ),
      ),
    );
  }
}
