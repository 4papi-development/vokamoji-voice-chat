import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vokamoji_voice_chat/constants/routes.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ChatList'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, firstChatRoute);
              },
              child: Text('ChatList'),
            ),
          ],
        ),
      ),
    );
  }
}
