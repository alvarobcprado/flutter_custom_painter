import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onPressed(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Custom Painter'),
      ),
      body: Center(
        child: Wrap(
          spacing: 10,
          children: [
            FilledButton.tonal(
              onPressed: () => _onPressed(context, Routes.example0),
              child: const Text('Example0'),
            ),
            FilledButton.tonal(
              onPressed: () => _onPressed(context, Routes.example1),
              child: const Text('Example1'),
            ),
            FilledButton.tonal(
              onPressed: () => _onPressed(context, Routes.example2),
              child: const Text('Example2'),
            ),
          ],
        ),
      ),
    );
  }
}
