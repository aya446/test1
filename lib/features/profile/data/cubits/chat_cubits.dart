import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/features/profile/data/cubits/chat_state.dart';
import 'package:test1/features/profile/data/models/message_model.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatinitialState());

  final List<MessageMoled> messagesList = [];

  void sendTextMessage(String text) {
    if (text.trim().isEmpty) return;

    final message = MessageMoled(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: text,
      createdAt: DateTime.now(),
      isUser: true,
      type: MessageType.text,
    );

    _addMessage(message);
  }

  void sendImageMessage(File imageFile) {
    final message = MessageMoled(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: imageFile.path,
      createdAt: DateTime.now(),
      isUser: true,
      type: MessageType.image,
    );

    _addMessage(message);
  }

  void _addMessage(MessageMoled message) {
    try {
      messagesList.add(message);
      emit(ChatSuccess(messages: List.from(messagesList)));
    } catch (e) {
      emit(ChatFailure(error: e.toString()));
    }
  }

  Map<String, List<MessageMoled>> get groupedMessages {
    final Map<String, List<MessageMoled>> grouped = {};

    for (var msg in messagesList) {
      final dateKey =
          "${msg.createdAt.year}-${msg.createdAt.month}-${msg.createdAt.day}";
      grouped.putIfAbsent(dateKey, () => []).add(msg);
    }

    return grouped;
  }
}
