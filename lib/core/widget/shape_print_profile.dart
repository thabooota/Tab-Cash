import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = ColorManager.darkDefaultColor;
    path = Path();
    path.lineTo(0, size.height * 0.01);
    path.cubicTo(0, size.height * 0.01, 0, 0, size.width * 0.01, 0);
    path.cubicTo(size.width * 0.01, 0, size.width, 0, size.width, 0);
    path.cubicTo(size.width, 0, size.width, 0, size.width, size.height * 0.01);
    path.cubicTo(size.width, size.height * 0.12, size.width * 1.02,
        size.height * 1.1, size.width * 0.72, size.height * 0.8);
    path.cubicTo(size.width * 0.44, size.height * 0.52, size.width * 0.09,
        size.height * 0.91, size.width * 0.01, size.height);
    path.cubicTo(
        size.width * 0.01, size.height, 0, size.height, 0, size.height);
    path.cubicTo(0, size.height, 0, size.height * 0.01, 0, size.height * 0.01);
    path.cubicTo(
        0, size.height * 0.01, 0, size.height * 0.01, 0, size.height * 0.01);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
