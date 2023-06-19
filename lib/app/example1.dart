import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

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
    ..strokeWidth = 10;

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

  void _drawOval(Canvas canvas) {
    final ovalRect = Rect.fromPoints(
      const Offset(50, 150),
      const Offset(150, 200),
    );
    canvas.drawOval(ovalRect, painter);
  }

  void _drawShapePath(Canvas canvas) {
    final shapeRect = Rect.fromPoints(
      const Offset(50, 250),
      const Offset(150, 300),
    );
    final shapePath = Path()
      ..addOval(shapeRect)
      ..addRect(shapeRect);
    canvas.drawPath(shapePath, painter);
  }

  void _drawPolygon(Canvas canvas) {
    final polygonPoints = [
      const Offset(250, 250),
      const Offset(350, 250),
      const Offset(300, 300),
      const Offset(200, 300),
    ];
    final polygonPath = Path()..addPolygon(polygonPoints, true);
    canvas.drawPath(polygonPath, painter);
  }

  void _drawBlendMode(Canvas canvas) {
    var centerBlue = const Offset(100 - 20, 400);
    var radius = 50.0;
    var paintBlue = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var centerRed = const Offset(100 + 40, 400);
    var paintRed = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill
      ..blendMode = BlendMode.hue;

    canvas.drawCircle(centerBlue, radius, paintBlue);
    canvas.drawCircle(centerRed, radius, paintRed);
  }

  @override
  void paint(Canvas canvas, Size size) {
    _drawLine(canvas);
    _drawRect(canvas);
    _drawRRect(canvas);
    _drawOval(canvas);
    _drawShapePath(canvas);
    _drawPolygon(canvas);
    _drawBlendMode(canvas);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
