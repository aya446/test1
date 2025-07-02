import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/prifile/data/models/FAQ_model.dart';

class FAQItem extends StatelessWidget {
  const FAQItem({super.key, required this.faqModel});
  final FAQModel faqModel;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: faqModel.onTap,
      child: Container(
        width: size.width * .9,
        height: size.height * 0.06,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(faqModel.title, style: Styles.black14),
              Spacer(),
              SvgPicture.asset('assets/icons/backArrow.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
