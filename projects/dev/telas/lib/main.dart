import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class Argumentos {
  final int id;
  final String nome;

  Argumentos(this.id, this.nome);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Tela1(),
        Tela2.rountName: (context) => const Tela2(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    int valor = 1;

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tela2',
                arguments: Argumentos(valor, 'Johnison $valor'));
            valor++;
          },
          child: const Text('Ir para a tela 2'),
        ),
      ),
    ));
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  static const rountName = '/tela2';

  @override
  Widget build(BuildContext context) {
    final argumentos = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Tela 2 ${argumentos.nome}',
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Voltar para a tela 1'),
          ),
        ),
      ),
    );
  }
}
