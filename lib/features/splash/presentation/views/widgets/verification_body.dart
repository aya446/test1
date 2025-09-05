import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';
import 'package:test1/features/splash/data/models/verification_model.dart';

class VerificationBody extends StatefulWidget {
  const VerificationBody({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  State<VerificationBody> createState() => _VerificationBodyState();
}

class _VerificationBodyState extends State<VerificationBody> {
  late VerificationModel verificationModel;

  @override
  void initState() {
    super.initState();
    verificationModel = VerificationModel();
  }

  @override
  void dispose() {
    verificationModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return AnimatedBuilder(
      animation: verificationModel,
      builder: (context, _) {
        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withAlpha(200),
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: screenHeight),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.35,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FAY',
                                  style: Styles.White20.copyWith(fontSize: 40),
                                ),
                                Text(
                                  'ez',
                                  style: Styles.gray16.copyWith(fontSize: 40),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm your phone number',
                                  style: Styles.White24,
                                ),
                                Text(
                                  'We’ve sent you the verification code on ',
                                  style: Styles.White14.copyWith(
                                    color: Colors.white.withAlpha(200),
                                  ),
                                ),
                                Text(
                                  "+2${widget.phoneNumber}",
                                  style: Styles.orange14,
                                ),
                                const SizedBox(height: 40),

                                PinCodeTextField(
                                  appContext: context,
                                  length: 4,
                                  textStyle: Styles.White16,
                                  keyboardType: TextInputType.number,
                                  onChanged: verificationModel.setOtp,
                                  onCompleted: (value) {
                                    debugPrint("OTP Completed: $value");
                                  },
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(12),
                                    activeColor: AppColors.darkGray,
                                    selectedColor: AppColors.mainColor,
                                    inactiveColor: Colors.white,
                                    fieldHeight: 60,
                                    fieldWidth: 60,
                                  ),
                                ),

                                const Spacer(),

                                Center(
                                  child: verificationModel.enableResend
                                      ? GestureDetector(
                                          onTap: () => verificationModel
                                              .resendCode(widget.phoneNumber),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Didn’t get code? ',
                                                style: Styles.White14,
                                              ),
                                              Text(
                                                "Resend",
                                                style: Styles.orange14.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      : Text(
                                          "Resend code in ${verificationModel.secondsRemaining}s",
                                          style: Styles.gray16,
                                        ),
                                ),
                                const SizedBox(height: 10),

                                DoneBotton(
                                  title: 'Create new account',
                                  actoin: () {
                                    Navigator.pushNamed(
                                      context,
                                      AppRoutes.home,
                                    );
                                  },
                                  isActive: true,
                                ),
                                const SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
