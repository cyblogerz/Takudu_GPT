import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constants.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  late String messageText;
  final messageTextController = TextEditingController();

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
        children: [
          Container(),
          Container(
            padding: EdgeInsets.only(bottom: 20),
            decoration: kMessageContainerDecoration,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    )),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(129, 165, 165, 165),
                      borderRadius: BorderRadius.all(Radius.circular(23)),
                    ),
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (value) {
                        messageText = value;
                        //Do something with the user input.
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      messageTextController.clear();

                      //Implement send functionality.
                    },
                    child: Icon(Icons.send)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
