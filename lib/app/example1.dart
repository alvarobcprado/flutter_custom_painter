import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

// Baseado em: https://getstream.io/blog/definitive-flutter-painting-guide
class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example1'),
      ),
      body: Center(
        child: SizedPainterBox(
          sideSize: size.width * 0.8,
          child: CustomPaint(
            size: Size.square(size.width * 0.5),
            painter: Example1Painter(),
            child: const Center(
              child: Text(
                'Example1',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Example1Painter extends CustomPainter {
  final painter = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.stroke
    ..strokeJoin = StrokeJoin.round
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 5;

  void _drawLine(Canvas canvas) {
    const lineP1 = Offset(50, 50);
    const lineP2 = Offset(100, 100);
    canvas.drawLine(lineP1, lineP2, painter);
  }

  void _drawRect(Canvas canvas) {
    final rectangle = Rect.fromPoints(
      const Offset(150, 50),
      const Offset(250, 100),
    );
    canvas.drawRect(rectangle, painter);
  }

  void _drawRRect(Canvas canvas) {
    final roundedRectangle = RRect.fromRectAndRadius(
      Rect.fromPoints(const Offset(300, 50), const Offset(400, 100)),
      const Radius.circular(20),
    );
    canvas.drawRRect(roundedRectangle, painter);
  }

  void _drawCircle(Canvas canvas) {
    const center = Offset(450, 75);
    const radius = 30.0;
    canvas.drawCircle(center, radius, painter);
  }

  void _drawOval(Canvas canvas) {
    final ovalRect = Rect.fromPoints(
      const Offset(400, 150),
      const Offset(500, 200),
    );
    canvas.drawOval(ovalRect, painter);
  }

  void _drawShapePath(Canvas canvas) {
    final shapeRect = Rect.fromPoints(
      const Offset(50, 150),
      const Offset(150, 200),
    );
    final shapePath = Path()
      ..addOval(shapeRect)
      ..addRect(shapeRect);
    canvas.drawPath(shapePath, painter);
  }

  void _drawPolygon(Canvas canvas) {
    final polygonPoints = [
      const Offset(250, 150),
      const Offset(350, 150),
      const Offset(300, 200),
      const Offset(200, 200),
    ];
    final polygonPath = Path()..addPolygon(polygonPoints, true);
    canvas.drawPath(polygonPath, painter);
  }

  void _drawPizzaShape(Canvas canvas) {
    final bluePaint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final redPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    const center = Offset(100, 400);
    const radius = 50.0;

    const double sliceAngle = 2 * pi / 12;

    for (int i = 0; i < 12; i++) {
      final startAngle = i * sliceAngle;

      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        startAngle,
        sliceAngle,
        true,
        i.isEven ? redPaint : bluePaint,
      );
    }
  }

  void _drawDoubleMoon(Canvas canvas) {
    const centerBlue = Offset(300 - 20, 400);
    const radius = 50.0;
    final paintBlue = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    const centerRed = Offset(300 + 20, 400);
    final paintRed = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final redPath = Path()
      ..addOval(Rect.fromCircle(center: centerRed, radius: radius));

    final bluePath = Path()
      ..addOval(Rect.fromCircle(center: centerBlue, radius: radius));

    canvas.drawPath(bluePath, paintBlue);
    canvas.drawPath(redPath, paintRed);

    final intersectionPath = Path.combine(
      PathOperation.intersect,
      redPath,
      bluePath,
    );

    canvas.drawPath(
      intersectionPath,
      Paint()..color = Colors.white,
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawLine(canvas);
    _drawRect(canvas);
    _drawRRect(canvas);
    _drawOval(canvas);
    _drawCircle(canvas);
    _drawPolygon(canvas);
    _drawShapePath(canvas);
    _drawPizzaShape(canvas);
    _drawDoubleMoon(canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
