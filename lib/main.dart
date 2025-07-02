import 'package:flutter/material.dart';
import 'package:test1/core/navigation/bottom_nav_layout.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/prifile/presentation/views/report_view.dart';

void main() {
  runApp(const Test1());
}

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => const BottomNavLayout(),
        AppRoutes.report: (context) => const ReportView(),
      },
    );
  }
}
