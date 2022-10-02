import 'package:flutter/material.dart';
import 'package:vokamoji_voice_chat/constants/routes.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, testVoiceRoute);
              },
              child: Text('TestVoice'),
            ),
          ],
        ),
      ),
    );
  }
}
