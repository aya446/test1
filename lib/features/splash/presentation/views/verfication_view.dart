import 'package:flutter/material.dart';
import 'package:test1/features/splash/presentation/views/widgets/verification_body.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key, required this.phoneNumber});
  final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: VerificationBody(phoneNumber: phoneNumber),
      ),
    );
  }
}
