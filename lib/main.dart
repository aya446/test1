import 'package:flutter/material.dart';
import 'package:test1/core/navigation/bottom_nav_layout.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/booking/presentation/views/booking_view.dart';
import 'package:test1/features/booking/presentation/views/ticket_view.dart';
import 'package:test1/features/home/presentation/views/notification_view.dart';
import 'package:test1/features/payment/presentation/views/instapay_view.dart';
import 'package:test1/features/payment/presentation/views/payment_methods_view.dart';
import 'package:test1/features/payment/presentation/views/send_instapay_data_view.dart';
import 'package:test1/features/payment/presentation/views/send_vodafon_data_view.dart';
import 'package:test1/features/payment/presentation/views/vodafon_view.dart';
import 'package:test1/features/payment/presentation/views/wallet_balance_view.dart';
import 'package:test1/features/payment/presentation/views/wallet_view.dart';
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
        AppRoutes.myTrips: (context) => const MyTripsView(),
        AppRoutes.notification: (context) => const NotificationView(),
        AppRoutes.booking: (context) => const BookingView(),
        AppRoutes.ticket: (context) => const TicketView(),
        AppRoutes.wallet: (context) => const WalletView(),
        AppRoutes.walletBalance: (context) => const WalletBalanceView(),
        AppRoutes.paymentMethods: (context) => const PaymentMethodsView(),
        AppRoutes.instaPay: (context) => const InstapayView(),
        AppRoutes.vodafon: (context) => const VodafonView(),
        AppRoutes.sendInstapay: (context) => const SendInstapayDataView(),
        AppRoutes.sendVodafon: (context) => const SendVodafonDataView(),
      },
    );
  }
}
