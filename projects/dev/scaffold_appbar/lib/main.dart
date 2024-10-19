import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo Scarffold'),
          backgroundColor: Colors.blueGrey.shade200,
        ),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Corpo do Aplicativo',
                style: TextStyle(fontSize: 30),
                ),
            ),
            Center(
              child: Text(
                'Meu aplicativo',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        )
      )
    );
  }
}
