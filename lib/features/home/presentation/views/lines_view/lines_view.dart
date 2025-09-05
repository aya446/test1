import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/presentation/views/lines_view/widgets/lines_body.dart';

class LinesView extends StatelessWidget {
  const LinesView({super.key, required this.lineName});
  final String lineName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(lineName, style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: LinesBody(),
    );
  }
}
