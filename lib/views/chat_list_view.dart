import 'package:flutter/material.dart';
import 'package:vokamoji_voice_chat/constants/routes.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

Widget ChatElement({
  required String title,
  required String subtitle,
  required VoidCallback onTap,
}) {
  // List tile with shadow under it
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 7,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ],
    ),
    child: ListTile(
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios),
    ),
  );

  return ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    onTap: onTap,
  );
}

class _ChatListViewState extends State<ChatListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Чаты"),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  DrawerHeader(
                    child: Text("ВОКОМОДЖИ"),
                    // Use asset image as a background for drawer header
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/vokamoji.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text("Инфо"),
                    onTap: () {
                      Navigator.pushNamed(context, infoRoute);
                    },
                  ),
                  ListTile(
                    title: Text("Тест распознавания эмоций"),
                    onTap: () {
                      Navigator.pushNamed(context, testVoiceRoute);
                    },
                  ),
                  ListTile(
                    title: Text("Выйти"),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, loginRoute, (route) => false);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            ChatElement(
              title: "Чат 1",
              subtitle: "Последнее сообщение",
              onTap: () => Navigator.pushNamed(context, firstChatRoute),
            ),
            ChatElement(
              title: "Чат 2",
              subtitle: "Последнее сообщение",
              onTap: () => {},
            ),
            ChatElement(
              title: "Чат 3",
              subtitle: "Последнее сообщение",
              onTap: () => {},
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
