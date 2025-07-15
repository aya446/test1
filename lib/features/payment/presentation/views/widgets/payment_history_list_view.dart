import 'package:flutter/material.dart';
import 'package:test1/features/payment/data/models/payment_history_model.dart';
import 'package:test1/features/payment/presentation/views/widgets/payment_history_item.dart';

class PaymentHistoryListView extends StatelessWidget {
  const PaymentHistoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaymentHistoryModel> paymentHistoryList = [
      PaymentHistoryModel(
        amount: '500',
        title: 'Premium subscription ',
        isPositive: false,
        date: '2/5/2024',
        currentbalance: 0.0,
      ),
      PaymentHistoryModel(
        amount: '900',
        title: 'Deposit',
        isPositive: true,
        date: '2/5/2024',
        currentbalance: 0.0,
      ),
      PaymentHistoryModel(
        amount: '400',
        title: 'Premium subscription ',
        isPositive: false,
        date: '2/5/2024',
        currentbalance: 0.0,
      ),
    ];
    return ListView.builder(
      itemCount: paymentHistoryList.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: PaymentHistoryItem(
            paymentHistoryModel: paymentHistoryList[index],
          ),
        );
      },
    );
  }
}
