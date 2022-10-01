import 'package:flutter/material.dart';
import 'package:vokamoji_voice_chat/views/chat_list_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPassword = false;
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Color color = Colors.grey;

  @override
  void dispose() {
    super.dispose();
    _login.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Text("Регистрация"),
                  SizedBox(
                    height: 25,
                  ),
                  Form(
                    ///autovalidateMode: const AutovalidateMode(),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: _password,
                    obscureText: !showPassword,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Пароль',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.password_rounded,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: showPassword,
                        onChanged: (value) {
                          setState(() {
                            showPassword = value!;
                          });
                        },
                      ),
                      const Text("Показать пароль"),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChatListView()),
                      );
                    },
                    child: Container(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Djqnb",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      height: 48,
                      width: 280,
                      decoration: BoxDecoration(
                          color: Color(0xff3486F4),
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 280,
                    decoration: BoxDecoration(
                        color: Color(0xff3486F4),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
