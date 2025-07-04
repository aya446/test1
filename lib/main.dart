import 'package:flutter/material.dart';
import 'package:test1/core/navigation/bottom_nav_layout.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/profile/presentation/views/my_trips_view/my_trips_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/report_datails_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/report_success.dart';
import 'package:test1/features/profile/presentation/views/report_view/report_view.dart';

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
        AppRoutes.reportDetails: (context) => const ReportDatailsView(),
        AppRoutes.reportSuccess: (context) => const ReportSuccess(),
        AppRoutes.MyTrips: (context) => const MyTripsView(),
      },
    );
  }
}
