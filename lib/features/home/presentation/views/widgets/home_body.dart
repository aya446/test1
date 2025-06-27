import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/header_section.dart';
import 'package:test1/features/home/presentation/views/widgets/poster_image.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              HeaderSection(),
              SizedBox(height: 30),
              PosterImage(),
            ],
          ),
        ),
      ),
    );
  }
}
