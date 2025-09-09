import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test1/features/profile/data/cubits/chat_cubits.dart';
import 'package:test1/features/profile/data/cubits/chat_state.dart';
import 'package:test1/features/profile/data/models/message_model.dart';
import 'package:test1/features/profile/presentation/views/contact_us/views/widgets/message_bubble.dart';

class ChatMessagesList extends StatelessWidget {
  final ScrollController scrollController;

  const ChatMessagesList({super.key, required this.scrollController});

  String _formatChatDate(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final messageDate = DateTime(date.year, date.month, date.day);

    if (messageDate == today) return "Today";
    if (messageDate == yesterday) return "Yesterday";
    return DateFormat('d MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatCubit, ChatState>(
      builder: (context, state) {
        if (state is ChatSuccess) {
          final messagesList = state.messages;

          final Map<String, List<MessageMoled>> grouped = {};
          for (var msg in messagesList) {
            final dateKey =
                "${msg.createdAt.year}-${msg.createdAt.month.toString().padLeft(2, '0')}-${msg.createdAt.day.toString().padLeft(2, '0')}";
            grouped.putIfAbsent(dateKey, () => []).add(msg);
          }

          final dateKeys = grouped.keys.toList();

          return ListView.builder(
            reverse: true,
            controller: scrollController,
            itemCount: dateKeys.length,
            itemBuilder: (context, dateIndex) {
              final dateKey = dateKeys[dateIndex];
              final messages = grouped[dateKey]!;
              final formattedDate = _formatChatDate(DateTime.parse(dateKey));

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // التاريخ
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      formattedDate,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // الرسائل الخاصة باليوم ده
                  ...messages.map((msg) => MessageBubble(message: msg)),
                ],
              );
            },
          );
        } else if (state is ChatFailure) {
          return Center(child: Text("Error: ${state.error}"));
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
