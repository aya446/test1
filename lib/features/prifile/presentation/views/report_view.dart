import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/prifile/presentation/views/widgets/report_body.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report', style: Styles.black16),
        centerTitle: true,
      ),
      body: ReportBody(),
    );
  }
}
