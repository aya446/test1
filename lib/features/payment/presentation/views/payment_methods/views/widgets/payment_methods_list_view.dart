import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/payment/presentation/views/payment_methods/views/widgets/payment_method_item.dart';
import 'package:test1/features/profile/data/models/settings_card_model.dart';

class PaymentMethodsListView extends StatelessWidget {
  const PaymentMethodsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsCardModel> paymentMethodslist = [
      SettingsCardModel(
        icon: 'assets/icons/card.svg',
        name: 'Instapay',
        description: 'Add funds by your instapay',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.instaPay);
        },
      ),
      SettingsCardModel(
        icon: 'assets/icons/vodafone.svg',
        iconColor: Color(0xffC21919),
        name: 'Vodafon',
        description: 'Add funds by Vodafone cash wallet',
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.vodafon);
        },
      ),
    ];
    return ListView.builder(
      itemCount: paymentMethodslist.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: PaymentMethodItem(settingsModel: paymentMethodslist[index]),
        );
      },
    );
  }
}
