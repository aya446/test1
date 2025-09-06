import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/seat_number.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';

class ScannedSuccessfullyView extends StatelessWidget {
  const ScannedSuccessfullyView({super.key, required this.result});
  final String result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Bar code", style: Styles.black20),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close, color: Colors.black),
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.home,
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SvgPicture.asset('assets/images/done.svg'),
            SizedBox(height: 20),
            Text('Scanned Successfully', style: Styles.black24),
            SizedBox(height: 10),
            Text("Fined your seat", style: Styles.orange20),
            SizedBox(height: 30),
            SeatNumber(number: result, isSelected: true),
            SizedBox(height: 10),
            Spacer(),
            Image.asset(
              'assets/images/scanned_successflly.png',
              width: 300,
              height: 260,
              fit: BoxFit.cover,
            ),
            Spacer(),
            DoneBotton(
              title: 'Done',
              actoin: () {
                Navigator.pushNamed(context, AppRoutes.home);
              },
              isActive: true,
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
