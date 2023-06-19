import 'package:flutter/material.dart';
import 'package:flutter_custom_painter/app/example0.dart';
import 'package:flutter_custom_painter/app/example1.dart';
import 'package:flutter_custom_painter/app/example2.dart';
import 'package:flutter_custom_painter/app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Custom Painter',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}

abstract class Routes {
  static const String home = '/';
  static const String example0 = '/example0';
  static const String example1 = '/example1';
  static const String example2 = '/example2';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => switch (settings) {
        RouteSettings(name: home) => const HomePage(),
        RouteSettings(name: example0) => const Example0(),
        RouteSettings(name: example1) => const Example1(),
        RouteSettings(name: example2) => const Example2(),
        _ => const HomePage(),
      },
    );
  }
}
