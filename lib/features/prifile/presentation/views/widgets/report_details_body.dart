import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/prifile/presentation/views/widgets/costom_search_bar.dart';
import 'package:test1/features/prifile/presentation/views/widgets/report_driver_list_view.dart';
import 'package:test1/features/prifile/presentation/views/widgets/report_text_field.dart';

class ReportDetailsBody extends StatefulWidget {
  const ReportDetailsBody({super.key});

  @override
  State<ReportDetailsBody> createState() => _ReportDetailsBodyState();
}

class _ReportDetailsBodyState extends State<ReportDetailsBody> {
  bool showTextfield = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What is the trip number ?", style: Styles.black16),
          SizedBox(height: 15),
          CostomSearchBar(),
          SizedBox(height: 20),
          Text("Why do you want to report the driver ?", style: Styles.black16),
          SizedBox(height: 15),
          ReportDriverListView(
            onOtherSelected: () {
              setState(() {
                showTextfield = true;
              });
            },
          ),
          if (showTextfield) ...[
            Text("Tell us what happened ?", style: Styles.black16),
            SizedBox(height: 15),
            ReportTextField(),
          ],
        ],
      ),
    );
  }
}
