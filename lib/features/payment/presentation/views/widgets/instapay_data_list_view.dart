import 'package:flutter/material.dart';
import 'package:test1/features/payment/data/models/payment_data_model.dart';
import 'package:test1/features/payment/presentation/views/widgets/payment_data.dart';

class InstapayDataListView extends StatelessWidget {
  const InstapayDataListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<PaymentDataModel> instapayDataList = [
      PaymentDataModel(
        title: 'Transferred amount',
        icon: 'assets/icons/wallet-money.svg',
      ),
      PaymentDataModel(
        title: 'Instapay address (optional)',
        icon: 'assets/icons/ph_at.svg',
      ),
      PaymentDataModel(
        title: 'Enter receipt id',
        icon: 'assets/icons/password-check.svg',
      ),
    ];
    return ListView.builder(
      itemCount: instapayDataList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: PaymentData(paymentDataModel: instapayDataList[index]),
        );
      },
    );
  }
}
