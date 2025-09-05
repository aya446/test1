import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/presentation/views/all_lines_view/widgets/all_lines_list.dart';

class AllLinesView extends StatelessWidget {
  const AllLinesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('All Lines', style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(child: AllLinesListView()),
        ],
      ),
    );
  }
}
