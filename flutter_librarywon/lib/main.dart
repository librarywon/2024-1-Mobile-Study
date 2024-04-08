import 'package:flutter/material.dart';

import 'home/custom_calendar_widget.dart';
import 'home/homework_widget.dart';
import 'home/title_text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "GDSC 모바일 스터디"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TitleTextWidget(text: title),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(1.0),
            child: Divider(
              height: 1.0,
              color: Color(0xFFDCDCDC),
              thickness: 1.0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          // 스크롤 가능하게 만들기 위해 SingleChildScrollView 추가
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TitleTextWidget(text: "과제"),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // 자식 위젯들 사이에 공간을 균등하게 분배
                  children: [
                    Expanded(
                      // 첫 번째 HomeworkWidget을 Expanded로 감싸기
                      child: HomeworkWidget(
                        text: '오늘의 과제',
                        imagePath: 'assets/images/ic_home_today_homework.svg',
                      ),
                    ),
                    SizedBox(width: 40.0),
                    Expanded(
                      // 두 번째 HomeworkWidget을 Expanded로 감싸기
                      child: HomeworkWidget(
                        text: '수행한 과제',
                        imagePath: 'assets/images/ic_home_done_homework.svg',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                TitleTextWidget(text: "나의 수행도"),
                SizedBox(height: 20.0),
                CustomCalendarWidget(),
                SizedBox(height: 20.0),
                TitleTextWidget(text: "나의 다짐"),
                SizedBox(height: 20.0),
                Text("네이티브 화이팅",
                    style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ))
              ],
            ),
          ),
        ));
  }
}
