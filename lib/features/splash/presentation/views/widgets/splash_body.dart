import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/presentation/views/report/widgets/done_botton.dart';
import 'package:test1/features/splash/presentation/views/widgets/outlined_botton.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black.withAlpha(200),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('FAY', style: Styles.White20.copyWith(fontSize: 40)),
                  Text('ez', style: Styles.gray16.copyWith(fontSize: 40)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Slogan 1 line ',
                    style: Styles.White20.copyWith(fontSize: 32),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Join now to khotout',
                    style: Styles.White20.copyWith(fontSize: 16),
                  ),
                  Spacer(),
                  DoneBotton(
                    title: 'Login',
                    actoin: () {
                      Navigator.pushNamed(context, AppRoutes.login);
                    },
                    isActive: true,
                  ),
                  const SizedBox(height: 20),
                  OutLinedBotton(
                    title: 'Create new account',
                    actoin: () {
                      Navigator.pushNamed(context, AppRoutes.register);
                    },
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
