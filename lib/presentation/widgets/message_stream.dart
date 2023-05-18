import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:takudu_gpt/presentation/providers/chat_provider.dart';
import 'package:takudu_gpt/presentation/widgets/message_bubble.dart';

class MessageStream extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chats = ref.watch(ChatProvider);
    return ListView.builder(
        itemCount: chats.length,
        itemBuilder: (BuildContext context, index) {
          return MessageBubble(
              text: chats[index].text,
              sender: chats[index].time,
              isMe: chats[index].isMe);
        });
  }
}
