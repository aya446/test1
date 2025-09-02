import 'package:flutter/material.dart';
import 'package:test1/core/navigation/bottom_nav_layout.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/booking/presentation/views/booking_view.dart';
import 'package:test1/features/booking/presentation/views/ticket_view.dart';
import 'package:test1/features/home/presentation/views/notification_view.dart';
import 'package:test1/features/profile/presentation/views/my_trips/my_trips_view.dart';
import 'package:test1/features/profile/presentation/views/report/report_datails_view.dart';
import 'package:test1/features/profile/presentation/views/report/report_success.dart';
import 'package:test1/features/profile/presentation/views/report/report_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/balance/views/wallet_balance_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/done_payment_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/instapay_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/send_instapay_data_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/vodafone/views/send_vodafon_data_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/vodafone/views/vodafon_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/payment_methods/views/payment_methods_view.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/wallet/views/wallet_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const BottomNavLayout());
      case AppRoutes.report:
        return MaterialPageRoute(builder: (_) => const ReportView());
      case AppRoutes.reportDetails:
        return MaterialPageRoute(builder: (_) => const ReportDatailsView());
      case AppRoutes.reportSuccess:
        return MaterialPageRoute(builder: (_) => const ReportSuccess());
      case AppRoutes.myTrips:
        return MaterialPageRoute(builder: (_) => const MyTripsView());
      case AppRoutes.notification:
        return MaterialPageRoute(builder: (_) => const NotificationView());
      case AppRoutes.booking:
        return MaterialPageRoute(builder: (_) => const BookingView());
      case AppRoutes.ticket:
        return MaterialPageRoute(builder: (_) => const TicketView());
      case AppRoutes.wallet:
        return MaterialPageRoute(builder: (_) => const WalletView());
      case AppRoutes.walletBalance:
        return MaterialPageRoute(builder: (_) => const WalletBalanceView());
      case AppRoutes.paymentMethods:
        return MaterialPageRoute(builder: (_) => const PaymentMethodsView());
      case AppRoutes.instaPay:
        return MaterialPageRoute(builder: (_) => const InstapayView());
      case AppRoutes.vodafon:
        return MaterialPageRoute(builder: (_) => const VodafonView());
      case AppRoutes.sendInstapay:
        return MaterialPageRoute(builder: (_) => const SendInstapayDataView());
      case AppRoutes.sendVodafon:
        return MaterialPageRoute(builder: (_) => const SendVodafonDataView());
      case AppRoutes.donePayment:
        return MaterialPageRoute(builder: (_) => const DonePaymentView());
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text("Route not found"))),
        );
    }
  }
}
