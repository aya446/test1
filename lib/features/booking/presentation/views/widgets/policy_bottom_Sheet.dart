import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';

class PolicyBottomSheet extends StatefulWidget {
  const PolicyBottomSheet({super.key, required this.onTap});
  final Function() onTap;
  @override
  State<PolicyBottomSheet> createState() => _PolicyBottomSheetState();
}

class _PolicyBottomSheetState extends State<PolicyBottomSheet> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                activeColor: AppColors.mainColor,
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              Expanded(
                child: Text(
                  'I have read and agree to Khutoot Terms of Service, Privacy Policy, U.S State Privacy Notice, and Incentive Loyalty Programs Notice.',
                  style: Styles.black14,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          DoneBotton(title: 'Next', isActive: isChecked, actoin: widget.onTap),
        ],
      ),
    );
  }
}
