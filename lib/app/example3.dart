import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

// Painter gerado pelo site: https://fluttershapemaker.com/
// Imagem utilizada: https://freesvg.org/vector-drawing-of-monochrome-terminal-window-on-pc-icon
class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example3'),
      ),
      body: Center(
        child: SizedPainterBox(
          sideSize: size.width * 0.8,
          child: CustomPaint(
            size: Size.square(size.width * 0.8),
            painter: Example3Painter(),
            child: const Center(
              child: Text(
                'Example3',
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

class Example3Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.1187500, size.height * 0.07812500);
    path_0.cubicTo(
        size.width * 0.1016233,
        size.height * 0.07812500,
        size.width * 0.08802000,
        size.height * 0.09172667,
        size.width * 0.08802000,
        size.height * 0.1088533);
    path_0.lineTo(size.width * 0.08802000, size.height * 0.6234367);
    path_0.cubicTo(
        size.width * 0.08802000,
        size.height * 0.6405700,
        size.width * 0.1016233,
        size.height * 0.6541700,
        size.width * 0.1187500,
        size.height * 0.6541700);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.6541700);
    path_0.cubicTo(
        size.width * 0.1908500,
        size.height * 0.7013033,
        size.width * 0.09593333,
        size.height * 0.8697033,
        size.width * 0.08436667,
        size.height * 0.9218700);
    path_0.lineTo(size.width * 0.9156333, size.height * 0.9218700);
    path_0.cubicTo(
        size.width * 0.9156333,
        size.height * 0.9218700,
        size.width * 0.8379500,
        size.height * 0.7083367,
        size.width * 0.6578167,
        size.height * 0.6541700);
    path_0.lineTo(size.width * 0.8812500, size.height * 0.6541700);
    path_0.cubicTo(
        size.width * 0.8983833,
        size.height * 0.6541700,
        size.width * 0.9119833,
        size.height * 0.6405700,
        size.width * 0.9119833,
        size.height * 0.6234367);
    path_0.lineTo(size.width * 0.9119833, size.height * 0.1088533);
    path_0.cubicTo(
        size.width * 0.9119833,
        size.height * 0.09173000,
        size.width * 0.8983833,
        size.height * 0.07812833,
        size.width * 0.8812500,
        size.height * 0.07812833);
    path_0.lineTo(size.width * 0.1187500, size.height * 0.07812833);
    path_0.close();

    Paint paint0Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1354167;
    paint0Stroke.color = const Color(0xffffffff).withOpacity(1.0);
    paint0Stroke.strokeCap = StrokeCap.round;
    paint0Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint0Stroke);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.05359833, size.height * 0.9575833);
    path_1.lineTo(size.width * 0.9500650, size.height * 0.9575833);
    path_1.cubicTo(
        size.width * 0.9500650,
        size.height * 0.9575833,
        size.width * 0.8366650,
        size.height * 0.6410667,
        size.width * 0.5649483,
        size.height * 0.6545833);
    path_1.cubicTo(
        size.width * 0.5307150,
        size.height * 0.6545833,
        size.width * 0.4986150,
        size.height * 0.6518833,
        size.width * 0.4515483,
        size.height * 0.6545833);
    path_1.cubicTo(
        size.width * 0.2119150,
        size.height * 0.6383500,
        size.width * 0.06861500,
        size.height * 0.8899500,
        size.width * 0.05363167,
        size.height * 0.9575833);

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05615833;
    paint1Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint1Stroke.strokeCap = StrokeCap.round;
    paint1Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.08847167, size.height * 0.04781333);
    path_2.cubicTo(
        size.width * 0.07000500,
        size.height * 0.04781333,
        size.width * 0.05513833,
        size.height * 0.06268000,
        size.width * 0.05513833,
        size.height * 0.08114667);
    path_2.lineTo(size.width * 0.05513833, size.height * 0.6358300);
    path_2.cubicTo(
        size.width * 0.05513833,
        size.height * 0.6542967,
        size.width * 0.07000500,
        size.height * 0.6691633,
        size.width * 0.08847167,
        size.height * 0.6691633);
    path_2.lineTo(size.width * 0.9103717, size.height * 0.6691633);
    path_2.cubicTo(
        size.width * 0.9288383,
        size.height * 0.6691633,
        size.width * 0.9437050,
        size.height * 0.6542967,
        size.width * 0.9437050,
        size.height * 0.6358300);
    path_2.lineTo(size.width * 0.9437050, size.height * 0.08114667);
    path_2.cubicTo(
        size.width * 0.9437050,
        size.height * 0.06267667,
        size.width * 0.9288383,
        size.height * 0.04781000,
        size.width * 0.9103717,
        size.height * 0.04781000);
    path_2.lineTo(size.width * 0.08847167, size.height * 0.04781000);
    path_2.close();

    Paint paint2Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.05615833;
    paint2Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint2Stroke.strokeCap = StrokeCap.round;
    paint2Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint2Stroke);

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1468333, size.height * 0.1226917);
    path_3.lineTo(size.width * 0.1468333, size.height * 0.6001917);
    path_3.lineTo(size.width * 0.8531667, size.height * 0.6001917);
    path_3.lineTo(size.width * 0.8531667, size.height * 0.1226917);
    path_3.lineTo(size.width * 0.1468333, size.height * 0.1226833);
    path_3.close();

    Paint paint3Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03125000;
    paint3Stroke.color = const Color(0xff000000).withOpacity(1.0);
    paint3Stroke.strokeCap = StrokeCap.round;
    paint3Stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_3, paint3Stroke);

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.2202167, size.height * 0.2155833);
    path_4.lineTo(size.width * 0.2202167, size.height * 0.2010833);
    path_4.lineTo(size.width * 0.3289500, size.height * 0.2381167);
    path_4.lineTo(size.width * 0.3289500, size.height * 0.2513333);
    path_4.lineTo(size.width * 0.2202167, size.height * 0.2883667);
    path_4.lineTo(size.width * 0.2202167, size.height * 0.2738667);
    path_4.lineTo(size.width * 0.3075833, size.height * 0.2448000);
    path_4.lineTo(size.width * 0.2202167, size.height * 0.2155833);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
