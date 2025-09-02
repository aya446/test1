import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/data/cubits/booking_cubit.dart';
import 'package:test1/features/booking/presentation/views/widgets/booking_body.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Book a ride', style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: BlocProvider(
        create: (context) => BookingCubit(),
        child: const BookingBody(),
      ),
    );
  }
}
