import 'package:flutter/material.dart';
import 'package:test1/features/profile/data/models/FAQ_model.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/FAQ_item.dart';

class FaqListView extends StatelessWidget {
  const FaqListView({super.key});
  @override
  Widget build(BuildContext context) {
    List<FAQModel> FAQList = [
      FAQModel(onTap: () {}, title: 'How I can book a ride ?'),
      FAQModel(onTap: () {}, title: 'How I can get my ticket scanned ?'),
      FAQModel(onTap: () {}, title: 'How to delete my account ?'),
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: FAQList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FAQItem(faqModel: FAQList[index]),
        );
      },
    );
  }
}
