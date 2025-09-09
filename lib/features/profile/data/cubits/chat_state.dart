import 'package:test1/features/profile/data/models/message_model.dart';

abstract class ChatState {}

class ChatinitialState extends ChatState {}

class ChatSuccess extends ChatState {
  final List<MessageMoled> messages;
  ChatSuccess({required this.messages});
}

class ChatFailure extends ChatState {
  final String error;
  ChatFailure({required this.error});
}
