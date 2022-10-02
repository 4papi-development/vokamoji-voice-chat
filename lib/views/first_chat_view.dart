import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../helpers/style.dart';
import '../helpers/widgets.dart';
import '../widgets/bubble.dart';

// ignore: must_be_immutable
class FirstChatView extends StatefulWidget {
  const FirstChatView({Key? key}) : super(key: key);
  @override
  _FirstChatViewState createState() => _FirstChatViewState();
}

class _FirstChatViewState extends State<FirstChatView> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(body: _messagesWithUserInfo(context));

  Widget _messagesWithUserInfo(BuildContext context) => SafeArea(
        child: Column(
          children: [
            _userInformation(context),
            const SizedBox(height: 8),
            _buildContainer(context),
          ],
        ),
      );

  Widget _userInformation(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.4 * 3),
                // color: Colors.blackithOpacity(.07),
              ),
              padding:
                  EdgeInsets.symmetric(horizontal: 3.8 * 3, vertical: 3.1 * 3),
              child: Icon(Icons.arrow_back_ios_outlined, size: 3.7 * 3),
            ),
            SizedBox(width: 5.5),
            //* avatar.
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CircleAvatar(
                radius: 5,
                child: Image.network(
                    'https://st2.depositphotos.com/1020618/6765/i/950/depositphotos_67657295-stock-photo-japanese-seafood-sushi-set.jpg'),
              ),
            ),
            SizedBox(width: 3.7 * 3),
            //* name & activity.
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: .3),
                const Text('Паша Дробинцев', style: TextStyle(fontSize: 13.5)),
                SizedBox(height: 1.1),
                Row(
                  children: [
                    Widgets.circle(context, 1.7 * 3, Colors.greenAccent),
                    SizedBox(width: 1.75 * 3),
                    Text(
                      'Active Now',
                      style: TextStyle(
                          fontSize: 12.2, color: Colors.grey.shade600),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );

  Widget _buildContainer(BuildContext context) => Expanded(
        child: Container(
          padding: const EdgeInsets.only(top: 18),
          decoration: BoxDecoration(
            boxShadow: S.innerBoxShadow(),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(S.radius38(context)),
              topRight: Radius.circular(S.radius38(context)),
            ),
          ),
          child: _messagesList(context),
        ),
      );

  Widget _messagesList(BuildContext context) => ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int index) => Bubble(
          index == 1 || index == 4 || index == 6, // for two chat side.
          index,
          voice: index == 4 || index == 5,
        ),
      );
}
