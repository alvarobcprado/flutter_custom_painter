import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example2'),
      ),
      body: Center(
        child: SizedPainterBox(
          sideSize: size.width * 0.8,
          child: CustomPaint(
            size: Size.square(size.width * 0.5),
            painter: Example2Painter(
              animation: _animationController,
            ),
            child: const Center(
              child: Text(
                'Example2',
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

class Example2Painter extends CustomPainter {
  Example2Painter({required this.animation}) : super(repaint: animation);
  final Animation animation;
  final int waveGap = 10;

  final wavePaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0
    ..isAntiAlias = true;

  double get waveRadius => 10.0 * animation.value;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2.0;
    double centerY = size.height / 2.0;
    double maxRadius = centerX;

    var currentRadius = waveRadius;
    while (currentRadius < maxRadius) {
      canvas.drawCircle(Offset(centerX, centerY), currentRadius, wavePaint);
      currentRadius += 10.0;
    }
  }

  @override
  bool shouldRepaint(Example2Painter oldDelegate) {
    return oldDelegate.waveRadius != waveRadius;
  }
}
