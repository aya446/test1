import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/features/payment/presentation/views/instapay/views/widgets/source_dialog.dart';
import 'image_preview.dart';

class ReceiptImagePicker extends StatefulWidget {
  const ReceiptImagePicker({super.key, this.onImagePicked});
  final void Function(File image)? onImagePicked;
  @override
  State<ReceiptImagePicker> createState() => _ReceiptImagePickerState();
}

class _ReceiptImagePickerState extends State<ReceiptImagePicker> {
  File? _selectedImage;
  bool _isPickingImage = false;

  Future<void> _pickImage(ImageSource source) async {
    if (_isPickingImage) return;

    setState(() {
      _isPickingImage = true;
    });

    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        final imageFile = File(pickedFile.path);
        setState(() {
          _selectedImage = imageFile;
        });
        widget.onImagePicked?.call(imageFile);
      }
    } catch (e) {
      print("Error picking image: $e");
    } finally {
      setState(() {
        _isPickingImage = false;
      });
    }
  }

  void _showImageSourceDialog() {
    ImageSourceDialog.show(
      context,
      onGalleryTap: () {
        Navigator.pop(context);
        _pickImage(ImageSource.gallery);
      },
      onCameraTap: () {
        Navigator.pop(context);
        _pickImage(ImageSource.camera);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showImageSourceDialog,
      child: ImagePreview(selectedImage: _selectedImage),
    );
  }
}
