import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/data/cubits/chat_cubits.dart';
import 'package:test1/features/profile/presentation/views/contact_us/views/widgets/contact_us_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contact Us', style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider(create: (_) => ChatCubit(), child: ContactUsBody()),
    );
  }
}
