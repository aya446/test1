import 'package:flutter/material.dart';
import 'package:test1/features/home/Data/models/offer_model.dart';
import 'package:test1/features/home/presentation/views/widgets/offer_item.dart';

class OfferListViewBuilder extends StatefulWidget {
  const OfferListViewBuilder({super.key});

  @override
  State<OfferListViewBuilder> createState() => _OfferListViewBuilderState();
}

class _OfferListViewBuilderState extends State<OfferListViewBuilder> {
  List<OfferModel> offerList = [
    OfferModel(
      image: 'assets/images/offer1.jpg',
      duration: 'Month',
      price: '500',
    ),
    OfferModel(
      image: 'assets/images/offer2.jpg',
      duration: 'Year',
      price: '1000',
    ),
    OfferModel(
      image: 'assets/images/offer3.jpg',
      duration: 'Custom bundle',
      price: '1200',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: offerList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: OfferItem(offer: offerList[index]),
        );
      },
    );
  }
}
