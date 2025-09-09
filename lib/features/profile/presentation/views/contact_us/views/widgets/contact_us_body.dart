import 'package:flutter/material.dart';
import 'package:test1/features/profile/presentation/views/contact_us/views/widgets/contact_us_listview.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          ContactUsListview(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
