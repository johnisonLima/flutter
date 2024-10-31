import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider (
      create: (_) => Pessoa(nome: 'José', idade: 45),
      child: const App(),
    ),
  );
}

class Pessoa with ChangeNotifier {
  String? nome;
  int? idade;

  Pessoa({this.nome, this.idade});

  void incrementaIdade() {
    idade = idade! + 1;
    notifyListeners();
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer<Pessoa>(
        builder: (context, pessoa, child) => Scaffold(
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
              '${pessoa.nome} tem ${pessoa.idade} anos de idade',
              style: const TextStyle(fontSize: 30),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              pessoa.incrementaIdade();
            },
          ),
        ),
      ),
    );
  }
}
