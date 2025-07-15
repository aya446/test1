import 'dart:io';
import 'package:flutter/material.dart';
import 'package:test1/core/routes/app_routes.dart';
import 'package:test1/features/booking/presentation/views/widgets/policy_bottom_Sheet.dart';
import 'package:test1/features/payment/presentation/views/instapay/views/widgets/reciept_image_picker.dart';
import 'package:test1/features/payment/presentation/views/vodafone/views/widgets/vodafon_data_list_view.dart';
import 'package:test1/features/profile/presentation/views/report_view/widgets/done_botton.dart';

class SendVodafonDataBody extends StatefulWidget {
  const SendVodafonDataBody({super.key});

  @override
  State<SendVodafonDataBody> createState() => _SendInstapayDataBodyState();
}

class _SendInstapayDataBodyState extends State<SendVodafonDataBody> {
  File? _uploadedImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          ReceiptImagePicker(
            onImagePicked: (image) {
              setState(() {
                _uploadedImage = image;
              });
            },
          ),
          const SizedBox(height: 12),
          const VodafonDataListView(),
          const Spacer(),
          DoneBotton(
            title: 'Send details',
            actoin: () {
              if (_uploadedImage != null) {
                Navigator.pushNamed(context, AppRoutes.donePayment);
                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(
                //     content: Text('Please upload a receipt image'),
                //   ),
                // );
              } else {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) {
                    return PolicyBottomSheet(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.donePayment);
                      },
                    );
                  },
                );
              }
            },
            isActive: true, //_uploadedImage != null,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
