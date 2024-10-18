import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Aplicativo olá, mundo!',
            style: TextStyle(
              color: Colors.white,
            )
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text(
            'Olá, mundo!',
            style: TextStyle(
              fontSize: 50,
              color: Colors.cyan,
            ),
          )
        )
      )
    );
  }
}
