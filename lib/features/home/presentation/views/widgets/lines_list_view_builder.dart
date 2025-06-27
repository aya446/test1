import 'package:flutter/material.dart';
import 'package:test1/features/home/presentation/views/widgets/lines_item.dart';

class LinesListViewBuilder extends StatefulWidget {
  const LinesListViewBuilder({super.key});

  @override
  State<LinesListViewBuilder> createState() => _LinesListViewBuilderState();
}

class _LinesListViewBuilderState extends State<LinesListViewBuilder> {
  final List<String> linesList = [
    'Zayed Lines',
    'Ramsis Lines',
    'Hosary Lines',
    'Giza Lines',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: linesList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LinesItem(linaName: linesList[index]),
        );
      },
    );
  }
}
