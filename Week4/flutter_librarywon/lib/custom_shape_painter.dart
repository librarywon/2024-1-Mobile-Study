import 'package:flutter/material.dart';

class CustomShapePainter extends CustomPainter {
  // 코드 재사용을 위한 파라미터
  final Color rectColor;
  final Color leftCircleColor;
  final Color rightCircleColor;

  CustomShapePainter({
    this.rectColor = Colors.black,
    this.leftCircleColor = Colors.black,
    this.rightCircleColor = Colors.black,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..style = PaintingStyle.fill;

    // 원 반지름 계산
    double radius = size.height / 2;

    // 사각형을 먼저 그려줌
    paint.color = rectColor;
    canvas.drawRect(
      Rect.fromLTWH(radius, 0, size.width - (radius * 2), size.height),
      paint,
    );

    // 왼쪽 원 그리기
    paint.color = leftCircleColor;
    canvas.drawCircle(Offset(radius, radius), radius, paint);

    // 오른쪽 원 그리기
    paint.color = rightCircleColor;
    canvas.drawCircle(Offset(size.width - radius, radius), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
