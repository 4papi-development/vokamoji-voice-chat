import 'dart:math';

import 'package:flutter/material.dart';
import 'package:voice_message_package/voice_message_package.dart';

import '../helpers/colors.dart';
import '../helpers/style.dart';

/// document will be added
// ignore: must_be_immutable
class Bubble extends StatelessWidget {
  Bubble(this.me, this.index, {Key? key, this.voice = false}) : super(key: key);
  bool me, voice;
  int index;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 5.2, vertical: 2),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.end,
          textDirection: me ? TextDirection.rtl : TextDirection.ltr,
          children: [
            _bubble(context),
            SizedBox(width: 2),
            _seenWithTime(context),
          ],
        ),
      );

  Widget _bubble(BuildContext context) => voice
      ? VoiceMessage(
          audioSrc:
              'https://upload.wikimedia.org/wikipedia/commons/f/fc/Russian_Anthem_chorus.ogg',
          me: index == 5 ? false : true,
        )
      : Container(
          constraints: BoxConstraints(maxWidth: 70),
          padding: EdgeInsets.symmetric(
            horizontal: 4,
            vertical: voice ? 2.8 : 2.5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              bottomLeft: me ? Radius.circular(6) : Radius.circular(2),
              bottomRight: !me ? Radius.circular(6) : Radius.circular(2),
              topRight: Radius.circular(6),
            ),
            color: me ? AppColors.pink : Colors.white,
            boxShadow: me
                ? S.pinkShadow(shadow: AppColors.pink100)
                : [S.boxShadow(context, opacity: .05)],
          ),
          child: Text(
            me
                ? 'Hello, How are u?'
                : Random().nextBool()
                    ? 'It\'s Rainy!'
                    : Random().nextBool()
                        ? 'Ok! got it.'
                        : 'How was going bro ?',
            style: TextStyle(
                fontSize: 13.2, color: me ? Colors.white : Colors.black),
          ),
        );

  Widget _seenWithTime(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (me)
            Icon(
              Icons.done_all_outlined,
              color: AppColors.pink,
              size: 3.4,
            ),
          Text(
            '1:' '${index + 30}' ' PM',
            style: const TextStyle(fontSize: 12),
          ),
        ],
      );
}
