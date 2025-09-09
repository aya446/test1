import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test1/core/utils/app_colors.dart';
import 'package:test1/features/profile/data/cubits/chat_cubits.dart';

class ChatInputField extends StatefulWidget {
  final TextEditingController controller;
  final ScrollController scrollController;

  const ChatInputField({
    super.key,
    required this.controller,
    required this.scrollController,
  });

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  String inputText = '';

  void _sendMessage() {
    if (inputText.trim().isEmpty) return;
    context.read<ChatCubit>().sendTextMessage(inputText);
    widget.controller.clear();
    setState(() => inputText = '');
    _scrollToEnd();
  }

  void _sendImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      context.read<ChatCubit>().sendImageMessage(File(image.path));
      _scrollToEnd();
    }
  }

  void _scrollToEnd() {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (widget.scrollController.hasClients) {
        widget.scrollController.animateTo(
          widget.scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: (value) => setState(() => inputText = value),
      onSubmitted: (value) => _sendMessage(),
      cursorColor: AppColors.darkGray,
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: inputText.trim().isEmpty ? _sendImage : _sendMessage,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: inputText.trim().isEmpty
                ? SvgPicture.asset('assets/icons/add_image.svg', width: 20)
                : Icon(Icons.send, color: AppColors.mainColor),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: AppColors.textColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
