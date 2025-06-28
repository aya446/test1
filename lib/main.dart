import 'package:flutter/material.dart';
import 'package:test1/core/navigation/bottom_nav_layout.dart';

void main() {
  runApp(const Test1());
}

class Test1 extends StatelessWidget {
  const Test1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavLayout(),
    );
  }
}
