import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/report_details_body.dart';

class ReportDatailsView extends StatelessWidget {
  const ReportDatailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Report', style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: ReportDetailsBody(),
    );
  }
}
