import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/presentation/views/wallet/data/models/bank_info_model.dart';
import 'package:test1/features/profile/presentation/views/wallet/presentation/views/instapay/views/widgets/floating_toast.dart';

class BankInfoCard extends StatelessWidget {
  const BankInfoCard({super.key, required this.bankInfoModel});
  final BankInfoModel bankInfoModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(bankInfoModel.title, style: Styles.gray12),
            const SizedBox(height: 5),
            Text(bankInfoModel.info, style: Styles.black16),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(text: bankInfoModel.info));
            FloatingToast.show(
              context,
              'Copied Successfully!',
              const Duration(seconds: 2),
              AppColors.darkGray,
            );
          },
          child: SvgPicture.asset('assets/icons/copy.svg'),
        ),
      ],
    );
  }
}
