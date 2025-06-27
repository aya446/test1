import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/header_section.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [HeaderSection()]),
    );
  }
}
