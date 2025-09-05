import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/ticket_item.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';

class DownloadTicketBody extends StatelessWidget {
  const DownloadTicketBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/done.svg'),
          SizedBox(height: 30),
          Text('Booking successfully', style: Styles.black24),
          SizedBox(height: 15),
          Text('Thank you', style: Styles.orange20),
          SizedBox(height: 30),
          TicketItem(),
          Spacer(),
          DoneBotton(
            isActive: true,
            title: 'Download Ticket',
            actoin: () {
              Navigator.of(context).pushNamed(AppRoutes.home);
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
