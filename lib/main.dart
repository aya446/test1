import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
import 'core/routes/app_routes.dart';

void main() {
  runApp(const Test1());
}

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home, 
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
