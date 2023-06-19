import 'package:flutter/material.dart';
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
    switch (settings) {
      case RouteSettings(name: home):
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteSettings(name: example0):
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteSettings(name: example1):
        return MaterialPageRoute(builder: (_) => const HomePage());
      case RouteSettings(name: example2):
        return MaterialPageRoute(builder: (_) => const HomePage());

      case _:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
  }
}
