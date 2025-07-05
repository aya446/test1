import 'package:flutter/material.dart';
import 'package:test1/features/profile/presentation/views/my_trips_view/widgets/custom_toggle_buttons.dart.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/costom_search_bar.dart';

class MyTripsBody extends StatelessWidget {
  const MyTripsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostomSearchBar(),
          SizedBox(height: 15),
          Expanded(child: CustomToggleButtons()),
        ],
      ),
    );
  }
}
