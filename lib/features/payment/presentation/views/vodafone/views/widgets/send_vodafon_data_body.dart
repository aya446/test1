import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/payment/presentation/views/vodafone/views/widgets/vodafon_data_list_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class SendVodafonDataBody extends StatelessWidget {
  const SendVodafonDataBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).width * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.textColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/camera.svg'),
                Text('Send Receipt photo', style: Styles.White12),
              ],
            ),
          ),
          SizedBox(height: 12),
          VodafonDataListView(),
          Spacer(),
          DoneBotton(title: 'Send details', actoin: () {}),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
