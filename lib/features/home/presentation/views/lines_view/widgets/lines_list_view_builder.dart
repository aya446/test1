import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/lines_model.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/lines_item.dart';

class LinesListViewBuilder extends StatefulWidget {
  const LinesListViewBuilder({super.key});

  @override
  State<LinesListViewBuilder> createState() => _LinesListViewBuilderState();
}

class _LinesListViewBuilderState extends State<LinesListViewBuilder> {
  final List<LineModel> linesModel = [
    LineModel(lineName: 'Zayed Lines'),
    LineModel(lineName: 'Ramsis Lines'),
    LineModel(lineName: 'Hosary Lines'),
    LineModel(lineName: 'Giza Lines'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: linesModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: LinesItem(lineModel: linesModel[index]),
        );
      },
    );
  }
}
