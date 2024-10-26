import 'package:flutter/material.dart';

import 'telas/homepage.dart';
import 'telas/quiz.dart';
import 'telas/resultado.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/Quiz': (context) => const Quiz(),
        Resultado.routeName: (context) => const Resultado(),
      },
    );
  }
}