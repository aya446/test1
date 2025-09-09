enum MessageType { text, image }

class MessageMoled {
  final String id;
  final String content;
  final DateTime createdAt;
  final bool isUser;
  final MessageType type;

  MessageMoled({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.isUser,
    required this.type,
  });
}
