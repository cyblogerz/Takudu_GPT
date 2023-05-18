import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:takudu_gpt/domain/models/chat_model.dart';
import 'package:takudu_gpt/presentation/providers/chat_provider.dart';

import '../../utils/constants.dart';

class ChatEntry extends ConsumerWidget {
  final TextEditingController messageTextController = TextEditingController();
  late String messageText;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: kMessageContainerDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.attach_file,
                color: Colors.grey,
              )),
          // IconButton(
          //     onPressed: () {},
          //     icon: const Icon(
          //       Icons.camera_alt,
          //       color: Colors.grey,
          //     )),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(129, 165, 165, 165),
                borderRadius: BorderRadius.all(Radius.circular(23)),
              ),
              child: TextField(
                controller: messageTextController,
                onChanged: (value) {
                  //Do something with the user input.
                  messageText = value;
                },
                decoration: kMessageTextFieldDecoration,
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                messageTextController.clear();
                ref.read(ChatProvider.notifier).addChat(
                    Chat(text: messageText, time: "10:50", isMe: true));

                //Implement send functionality.
              },
              child: const Icon(Icons.send)),
        ],
      ),
    );
  }
}
