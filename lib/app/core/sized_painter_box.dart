import 'dart:ui';

import 'package:flutter/material.dart';

class SizedPainterBox extends StatelessWidget {
  const SizedPainterBox(
      {super.key, required this.sideSize, required this.child});

  final double sideSize;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sideSize,
      height: sideSize,
      child: CustomPaint(
        size: Size.square(sideSize),
        painter: SizedPainterBoxPainter(),
        child: child,
      ),
    );
  }
}

class SizedPainterBoxPainter extends CustomPainter {
  final painter = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 1;

  Paragraph _getOffsetParagraphBuilder(Offset offset) {
    final paragraphBuilder = ParagraphBuilder(
      ParagraphStyle(),
    )
      ..pushStyle(
        const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ).getTextStyle(),
      )
      ..addText('X: ${offset.dx} Y: ${offset.dy}');

    final paragraph = paragraphBuilder.build()
      ..layout(const ParagraphConstraints(width: 200));

    return paragraph;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromPoints(
      const Offset(0.0, 0.0),
      Offset(size.width, size.height),
    );

    var offsetX0Y0 = const Offset(0.0, 0.0);
    var offsetX1Y0 = Offset(size.width, 0.0);
    var offsetX0Y1 = Offset(0.0, size.height);
    var offsetX1Y1 = Offset(size.width, size.height);

    final paragraphX0Y0 = _getOffsetParagraphBuilder(offsetX0Y0);
    final paragraphX1Y0 = _getOffsetParagraphBuilder(offsetX1Y0);
    final paragraphX0Y1 = _getOffsetParagraphBuilder(offsetX0Y1);
    final paragraphX1Y1 = _getOffsetParagraphBuilder(offsetX1Y1);

    offsetX0Y0 = Offset(
      offsetX0Y0.dx,
      offsetX0Y0.dy - paragraphX0Y0.height * 1.1,
    );

    offsetX1Y0 = Offset(
      offsetX1Y0.dx - paragraphX1Y0.maxIntrinsicWidth,
      offsetX1Y0.dy - paragraphX1Y0.height * 1.1,
    );

    offsetX0Y1 = Offset(
      offsetX0Y1.dx,
      offsetX0Y1.dy + paragraphX0Y1.height * 0.1,
    );

    offsetX1Y1 = Offset(
      offsetX1Y1.dx - paragraphX1Y1.maxIntrinsicWidth,
      offsetX1Y1.dy + paragraphX1Y1.height * 0.1,
    );

    canvas
      ..drawParagraph(
        paragraphX0Y0,
        offsetX0Y0,
      )
      ..drawParagraph(
        paragraphX1Y0,
        offsetX1Y0,
      )
      ..drawParagraph(
        paragraphX0Y1,
        offsetX0Y1,
      )
      ..drawParagraph(
        paragraphX1Y1,
        offsetX1Y1,
      )
      ..drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
