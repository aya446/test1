import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/home/Data/models/offer_model.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key, required this.offer});
  final OfferModel offer;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 120,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(offer.image),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(offer.duration, style: Styles.black14),
        Text('From ${offer.price} EGP', style: Styles.orange13),
      ],
    );
  }
}
