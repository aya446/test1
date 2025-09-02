import 'package:flutter/material.dart';
import 'package:test1/features/profile/presentation/views/wallet/data/models/bank_info_model.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/widgets/bank_info_card.dart';

class BankInfoListView extends StatelessWidget {
  const BankInfoListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<BankInfoModel> bankInfoList = [
      BankInfoModel(
        title: 'Bank Name ',
        info: 'Commercial international bank of egypt',
      ),
      BankInfoModel(title: 'Account Number ', info: '12346793759'),
      BankInfoModel(title: 'company Name ', info: 'Khoutout app'),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: bankInfoList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: BankInfoCard(bankInfoModel: bankInfoList[index]),
        );
      },
    );
  }
}
