import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example2'),
      ),
      body: Center(
        child: CustomPaint(
          size: Size.square(size.width * 0.5),
          painter: Example2Painter(),
        ),
      ),
    );
  }
}

class Example2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
