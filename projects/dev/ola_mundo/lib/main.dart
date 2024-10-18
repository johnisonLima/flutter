import 'package:flutter/material.dart';

void main() {
  const int valor = 10;

  runApp(const App('Aplicativo olá, mundo!', valor));
}

class App extends StatelessWidget {
  final String? title;
  final int? valor;

  const App(this.title, this.valor, {super.key});

  // const App(String s, {Key? key, this.title, this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text(title!,
                  style: const TextStyle(
                    color: Colors.white,
                  )),
              backgroundColor: Colors.blue,
            ),
            body: Center(
                child: Text(
              'Olá, mundo!, valor é $valor',
              style: const TextStyle(
                fontSize: 50,
                color: Colors.cyan,
              ),
            ))));
  }
}
