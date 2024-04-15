import 'package:flutter/material.dart';

import 'CustomShapePainter.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomPaint(
              size: Size(314, 100),
              painter: CustomShapePainter(
                leftCircleColor: Colors.white,
                rightCircleColor: Colors.black,
              ),
            ),
            SizedBox(height: 30),
            CustomPaint(
              size: Size(314, 100),
              painter: CustomShapePainter(
                leftCircleColor: Colors.white,
                rightCircleColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            CustomPaint(
              size: Size(314, 100),
              painter: CustomShapePainter(
                leftCircleColor: Colors.black,
                rightCircleColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
