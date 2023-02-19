import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color(0XFF570861)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width, 0);
    path0.cubicTo(size.width * 0.2500000, size.height * 0.0028571,
        size.width * 0.2500000, 0, 0, 0);
    path0.cubicTo(size.width * -0.0007750, size.height * 0.1645714, 0,
        size.height * 0.4668143, 0, size.height * 0.6423429);
    path0.cubicTo(
        size.width * 0.3925917,
        size.height * 0.4430857,
        size.width * 0.4004833,
        size.height * 0.9157714,
        size.width,
        size.height * 0.7128571);
    path0.cubicTo(size.width, size.height * 0.5346429, size.width * 1.0004500,
        size.height * 0.5404143, size.width, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
