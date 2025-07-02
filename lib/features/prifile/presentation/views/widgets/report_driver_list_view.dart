import 'package:flutter/material.dart';
import 'package:test1/features/prifile/data/models/FAQ_model.dart';
import 'package:test1/features/prifile/presentation/views/widgets/FAQ_item.dart';

class ReportDriverListView extends StatelessWidget {
  final Function(String title) onItemSelected;

  const ReportDriverListView({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    List<FAQModel> reportDriverList = [
      FAQModel(
        onTap: () => onItemSelected('The driver was rude'),
        title: 'The driver was rude',
      ),
      FAQModel(
        onTap: () => onItemSelected('The driver was late'),
        title: 'The driver was late',
      ),
      FAQModel(
        onTap: () => onItemSelected('Reckless driver'),
        title: 'Reckless driver',
      ),
      FAQModel(onTap: () => onItemSelected('Other'), title: 'Other'),
    ];

    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: reportDriverList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: FAQItem(faqModel: reportDriverList[index]),
        );
      },
    );
  }
}
