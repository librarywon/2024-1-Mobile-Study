import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;

  const TitleTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Pretendard',
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    );
  }
}
