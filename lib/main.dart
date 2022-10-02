import 'package:flutter/material.dart';
import 'package:vokamoji_voice_chat/views/chat_list_view.dart';
import 'package:vokamoji_voice_chat/views/first_chat_view.dart';
import 'package:vokamoji_voice_chat/views/info_view.dart';
import 'package:vokamoji_voice_chat/views/login_view.dart';
import 'package:vokamoji_voice_chat/views/register_view.dart';
import 'package:vokamoji_voice_chat/views/test_voice_view.dart';

import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ВОКОМОДЖИ',
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        chatListRoute: (context) => const ChatListView(),
        firstChatRoute: (context) => const FirstChatView(),
        testVoiceRoute: (context) => RecordingScreen(),
        infoRoute: (context) => const InfoView(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginView(),
    );
  }
}
