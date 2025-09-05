import 'dart:async';
import 'package:flutter/material.dart';

class VerificationModel extends ChangeNotifier {
  int secondsRemaining = 30;
  Timer? _timer;
  bool enableResend = false;
  String otpCode = "";

  VerificationModel() {
    startTimer();
  }

  void startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (secondsRemaining > 0) {
        secondsRemaining--;
      } else {
        enableResend = true;
        t.cancel();
      }
      notifyListeners();
    });
  }

  void resendCode(String phoneNumber) {
    secondsRemaining = 30;
    enableResend = false;
    notifyListeners();
    startTimer();
    debugPrint("Resend new code to $phoneNumber");
  }

  void setOtp(String value) {
    otpCode = value;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
