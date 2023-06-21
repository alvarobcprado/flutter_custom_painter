import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/core/sized_painter_box.dart';

// Baseado em: https://medium.com/flutter-community/flutter-custom-painter-circular-wave-animation-bdc65c112690
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
      duration: const Duration(milliseconds: 1000),
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
          child: GestureDetector(
            onTap: () {
              if (_animationController.isAnimating) {
                _animationController.stop();
              } else {
                _animationController.repeat();
              }
            },
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
      ),
    );
  }
}

class Example2Painter extends CustomPainter {
  Example2Painter({required this.animation}) : super(repaint: animation);
  final Animation animation;

  static const double waveGap = 10.0;

  final wavePaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..color = Colors.blue
    ..isAntiAlias = true;

  double get waveRadius => waveGap * animation.value;

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2.0;
    double centerY = size.height / 2.0;
    double maxRadius = centerX;

    var currentRadius = waveRadius;
    while (currentRadius <= maxRadius) {
      final waveOpacity = 1.0 - (currentRadius / maxRadius);
      final waveStrokeWidth = (waveOpacity * 5.0);
      wavePaint.strokeWidth = waveStrokeWidth;
      wavePaint.color = wavePaint.color.withOpacity(waveOpacity);

      canvas.drawCircle(Offset(centerX, centerY), currentRadius, wavePaint);
      currentRadius += waveGap;
    }
  }

  @override
  bool shouldRepaint(Example2Painter oldDelegate) {
    return oldDelegate.animation != animation;
  }

  @override
  bool hitTest(Offset position) {
    if (position.dx >= 0 && position.dx <= 100) {
      return true;
    }
    return false;
  }
}
