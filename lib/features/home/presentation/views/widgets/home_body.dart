import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/header_section.dart';
import 'package:test1/features/home/presentation/views/widgets/lines_list_view_builder.dart';
import 'package:test1/features/home/presentation/views/widgets/poster_image.dart';
import 'package:test1/features/home/presentation/views/widgets/title_item.dart';

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
              SizedBox(height: 20),
              TitleItem(title: 'Lines'),
              SizedBox(height: 10),
              SizedBox(height: 100, child: LinesListViewBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
