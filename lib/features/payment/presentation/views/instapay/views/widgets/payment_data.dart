import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/payment/data/models/payment_data_model.dart';

class PaymentData extends StatelessWidget {
  const PaymentData({super.key, required this.paymentDataModel});
  final PaymentDataModel paymentDataModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).width * .1,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGray),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SvgPicture.asset(paymentDataModel.icon),
            SizedBox(width: 15),
            Text(paymentDataModel.title, style: Styles.gray14),
          ],
        ),
      ),
    );
  }
}
