import 'package:flutter/material.dart';
import 'package:flutter_librarywon/home/title_text_widget.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeworkWidget extends StatelessWidget {
  final String text;
  final String imagePath;

  const HomeworkWidget({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0, // Container의 너비
      height: 150.0, // Container의 높이
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white, // 배경색
        borderRadius: BorderRadius.circular(10), // 모서리 둥글기
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // 그림자 색상
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3), // 그림자 위치
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleTextWidget(text: text),
          SizedBox(height: 20.0),
          Image(
            image: Svg(imagePath),
            width: 50.0,
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
