import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/chat_model.dart';

class ChatNotifier extends StateNotifier<List<Chat>> {
  ChatNotifier()
      : super([
          Chat(text: "Hello bro, Kaise ho aap", time: "12:50am", isMe: false),
          Chat(text: "How r u??", time: "12:50am", isMe: true),
        ]); //inside super initial value

  void addChat(Chat chat) {
    state = [...state, chat];
  }
}

final ChatProvider =
    StateNotifierProvider<ChatNotifier, List<Chat>>((ref) => ChatNotifier());
