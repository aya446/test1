import 'package:flutter/material.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/booking/presentation/views/widgets/ticket_body.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ticket', style: Styles.black16),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: TicketBody(),
    );
  }
}
