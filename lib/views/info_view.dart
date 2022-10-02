import 'package:flutter/material.dart';

class InfoView extends StatefulWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  State<InfoView> createState() => _InfoViewState();
}

class _InfoViewState extends State<InfoView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Информация"),
      ),
        backgroundColor: Colors.white,
      body:
        SingleChildScrollView(
          child: Center(
                child: Column(
                  children: [
                    Text('Это приложение было сделано специально для "Тот самый хакатон 2022" от Чупапибамбони. ', style:
            TextStyle(fontSize: 30, color: Colors.pinkAccent)),
                    SizedBox(
                      height: 30,
                    ),
                  ],

                ),
          ),
        ),

    );
  }
}