import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/recent_ride_model.dart';
import 'package:test1/features/home/presentation/views/widgets/header_section.dart';
import 'package:test1/features/home/presentation/views/widgets/lines_list_view_builder.dart';
import 'package:test1/features/home/presentation/views/widgets/offer_list_view_builder.dart';
import 'package:test1/features/home/presentation/views/widgets/poster_image.dart';
import 'package:test1/features/home/presentation/views/widgets/recent_ride_card.dart';
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
            children: [
              HeaderSection(),
              SizedBox(height: 30),
              PosterImage(),
              SizedBox(height: 20),
              TitleItem(title: 'Lines'),
              SizedBox(height: 10),
              SizedBox(height: 100, child: LinesListViewBuilder()),
              SizedBox(height: 10),
              TitleItem(title: 'Recent Ride'),
              SizedBox(height: 10),
              RecentRideCard(
                isActive: true,
                recentRideModel: RecentRideModel(
                  lineName: "Zayed line",
                  linePrice: '250',
                  numberOfstations: '5',
                  departureTime: '10:00 AM',
                  arrivalTime: '12:00 PM',
                  duration: '2 Hours',
                  departureArea: 'Giza',
                  arrivalArea: 'Ramsis',
                  departureStation: 'Giza Station',
                  arrivalStation: 'Ramsis Station',
                ),
              ),
              SizedBox(height: 20),
              TitleItem(title: 'Offers'),
              SizedBox(height: 160, child: OfferListViewBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
