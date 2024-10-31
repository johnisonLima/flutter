import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider(
      create: (_) => Pessoa(nome: 'José', idade: 45),
      child: const App(),
    ),
  );
}

class Pessoa {
  String? nome;
  int? idade;

  Pessoa({this.nome, this.idade});
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Provider State',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Center(
          child: Text(
            '${(context).select((Pessoa p) => p.nome)} tem ${(context).select((Pessoa p) => p.idade)} anos de idade',
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
