import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

class Example0 extends StatelessWidget {
  const Example0({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example0'),
      ),
      body: Center(
        child: SizedPainterBox(
          sideSize: size.width * 0.8,
          child: CustomPaint(
            // Tamanho disponível para o painter desenhar
            size: Size.square(size.width * 0.5),
            // Painter que irá desenhar na tela
            painter: Example0Painter(),
            // Painter que irá desenhar na tela, porém, na frente do child
            foregroundPainter: null,
            // Se o painter é complexo suficiente para utilizar cache,
            isComplex: false,
            // Se o painter irá mudar de um frame para outro
            willChange: false,
            child: const Center(
              child: Text(
                'Example0',
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

class Example0Painter extends CustomPainter {
  final line = Path()
    ..moveTo(50, 50)
    ..lineTo(100, 100)
    ..lineTo(150, 50);
  // ..relativeLineTo(50, 50)
  // ..relativeLineTo(50, -50);

  final painter = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.stroke
    ..strokeJoin = StrokeJoin.round
    ..strokeCap = StrokeCap.round
    ..strokeWidth = 10;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(line, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  @override
  bool? hitTest(Offset position) {
    return null;
  }
}
