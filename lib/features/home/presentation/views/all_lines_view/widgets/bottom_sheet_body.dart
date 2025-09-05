import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/presentation/views/all_lines_view/widgets/bottom_sheet_botton.dart';
import 'package:test1/features/home/presentation/views/home_view/widgets/line_stations_list_view.dart';

class BottomSheetBody extends StatefulWidget {
  const BottomSheetBody({super.key});

  @override
  State<BottomSheetBody> createState() => _BottomSheetBodyState();
}

class _BottomSheetBodyState extends State<BottomSheetBody> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Choose your pick up station", style: Styles.black16),
          SizedBox(height: 10),
          LineStationsListView(
            selectedIndex: selectedIndex,
            onSelect: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Row(
            children: [
              BottomSheetBotton(
                isOrange: true,
                isSelected: selectedIndex != null,
                title: 'Book now',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.booking);
                },
              ),
              SizedBox(width: 15),
              BottomSheetBotton(
                isOrange: false,
                isSelected: false,
                title: 'Close',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
