import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';
import 'package:test1/core/routes/app_routes.dart';

class ScannerView extends StatefulWidget {
  const ScannerView({super.key});

  @override
  State<ScannerView> createState() => _ScannerViewState();
}

class _ScannerViewState extends State<ScannerView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      String? res = await SimpleBarcodeScanner.scanBarcode(
        context,
        isShowFlashIcon: true,
        cameraFace: CameraFace.back,
      );

      if (!mounted) return;

      if (res != null && res.isNotEmpty && res != "-1") {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.scanned,
          arguments: res,
        );
      } else {
        Navigator.pushReplacementNamed(
          context,
          AppRoutes.scanned,
          arguments: '14',
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
