import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:takudu_gpt/presentation/providers/chat_provider.dart';
import 'package:takudu_gpt/presentation/widgets/message_stream.dart';

import '../../utils/constants.dart';
import '../widgets/chat_entry.dart';

class ChatHome extends ConsumerStatefulWidget {
  const ChatHome({super.key});

  @override
  ConsumerState<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends ConsumerState<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 10,
                ),
                Text("Takudu GPT"),
              ],
            ),
            CircleAvatar(
              child: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [Expanded(child: MessageStream()), ChatEntry()],
      ),
    );
  }
}
