import 'package:flutter/material.dart';
import 'package:vokamoji_voice_chat/constants/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Register'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, loginRoute);
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
