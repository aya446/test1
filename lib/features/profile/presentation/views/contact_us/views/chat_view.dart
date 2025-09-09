import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/core/utils/Styles.dart';
import 'package:test1/features/profile/data/cubits/chat_cubits.dart';
import 'package:test1/features/profile/presentation/views/contact_us/views/widgets/chat_inpu_field.dart';
import 'package:test1/features/profile/presentation/views/contact_us/views/widgets/chat_message_list.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key});

  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controller = TextEditingController();

  static String id = "ChatPage";

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<ChatCubit>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Support Chat", style: Styles.black20),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          children: [
            Expanded(
              child: ChatMessagesList(scrollController: _scrollController),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ChatInputField(
                controller: _controller,
                scrollController: _scrollController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
