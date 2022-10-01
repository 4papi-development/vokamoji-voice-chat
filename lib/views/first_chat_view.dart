import 'package:flutter/material.dart';

class FirstChatView extends StatelessWidget {
  const FirstChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('FirstChat'),
          ],
        ),
      ),
    );
  }
}
