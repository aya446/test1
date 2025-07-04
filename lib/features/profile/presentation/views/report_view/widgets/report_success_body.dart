import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class ReportSuccessBody extends StatelessWidget {
  const ReportSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/done.svg'),
          SizedBox(height: 30),
          Text('Reported successfully', style: Styles.black24),
          SizedBox(height: 15),
          Text('You will hear from us soon', style: Styles.orange20),
          SizedBox(height: 50),
          SvgPicture.asset('assets/images/reportImage.svg'),
          Spacer(),
          DoneBotton(title: 'Done'),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
