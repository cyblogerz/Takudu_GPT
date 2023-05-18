import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  MessageBubble({required this.text, required this.sender, required this.isMe});
  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              constraints: const BoxConstraints(minWidth: 0, maxWidth: 200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
                // gradient: LinearGradient(
                //   colors: [Colors.purple, Colors.deepPurple, Colors.blueAccent],
                //   begin: Alignment.bottomRight,
                //   end: Alignment.topLeft,
                // ),
                color: Theme.of(context).colorScheme.primary,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 183, 183, 183),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 20.0),
                child: Text(
                  text == null ? '' : text,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Metropolis'),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                sender,
                style: TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ),
            Container(
              // elevation: 5.0,
              constraints: BoxConstraints(minWidth: 0, maxWidth: 200),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 183, 183, 183),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: Text(text == null ? '' : text,
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
            ),
          ],
        ),
      );
    }
  }
}
