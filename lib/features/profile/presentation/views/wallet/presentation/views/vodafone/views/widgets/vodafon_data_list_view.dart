import 'package:flutter/material.dart';
import 'package:test1/features/profile/presentation/views/wallet/data/models/payment_data_model.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/widgets/payment_data.dart';

class VodafonDataListView extends StatelessWidget {
  const VodafonDataListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<PaymentDataModel> instapayDataList = [
      PaymentDataModel(
        title: 'Transferred amount',
        icon: 'assets/icons/wallet-money.svg',
      ),
      PaymentDataModel(
        title: 'Vodafon cash number',
        icon: 'assets/icons/call.svg',
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
