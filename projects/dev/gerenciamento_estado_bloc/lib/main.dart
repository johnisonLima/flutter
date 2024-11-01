import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String texto = 'Bloc State Managemet';
  int valor = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(texto, style: TextStyle(color: Colors.red[700]),),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            print('Clicou');

            setState(() {
              valor++;
            });
          },
          child: Center(
            child: Text(
              valor.toString(),
              textDirection: TextDirection.ltr,
              style: const TextStyle(fontSize: 50)
            ),
          ),
        ),
      ),
    );
  }
}
