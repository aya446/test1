import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/FAQ_list_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/report_item_list_view.dart';

class ReportBody extends StatelessWidget {
  const ReportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What do you want to report ?', style: Styles.black16),
          SizedBox(height: 15),
          ReportItemListView(),
          Text('FAQ', style: Styles.black16),
          SizedBox(height: 15),
          FaqListView(),
        ],
      ),
    );
  }
}
