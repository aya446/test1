import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/ticket_item.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My ticket', style: Styles.black24),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageCard(
                  image: 'assets/images/find_your_ticket.png',
                  text: 'Find your ticket',
                ),
                ImageCard(
                  image: 'assets/images/show_ticket.png',
                  text: 'Show the barcode to the driver',
                ),
                ImageCard(
                  image: 'assets/images/go_to_seat.png',
                  text: 'Go to your seat',
                ),
              ],
            ),
            SizedBox(height: 30),
            TicketItem(),
          ],
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * .28,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * .25,
          child: Text(text, style: Styles.black14),
        ),
      ],
    );
  }
}
