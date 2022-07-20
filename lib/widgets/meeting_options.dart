import 'package:flutter/material.dart';
import 'package:video_meet_app/utils/colors.dart';

class Meetingoption extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const Meetingoption(
      {Key? key,
      required this.text,
      required this.isMute,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        color: secondaryBackgroundColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Switch(value: isMute, onChanged: onChange)
          ],
        ));
  }
}
