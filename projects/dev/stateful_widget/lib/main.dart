// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() => runApp(const App('José'));

class App extends StatefulWidget {
  final String? nome;

  const App(this.nome, {super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int salario = 7000;

  void aumentaSalario(int valor) {
    setState(() {
      salario += valor;
    });
  }

  void diminueSalario(int valor) {
    setState(() {
      salario -= valor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: () => {
            diminueSalario(200),
          },
          child: Text(
            'O salário de ${widget.nome} é $salario',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
