import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';

class PosterImage extends StatelessWidget {
  const PosterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).width * .23,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/posterJPG.jpg'),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Book your next Bus ride', style: Styles.White20),
            SizedBox(height: 5),
            Text('Easy bus rides reservations', style: Styles.White14),
          ],
        ),
      ),
    );
  }
}
