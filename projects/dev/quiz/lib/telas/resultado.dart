import 'package:flutter/material.dart';

class Argumentos {
  int acertos = 0;

  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  const Resultado({super.key});

  static const routeName = '/Resultado';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Argumentos;

    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.red[500],
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
          )),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Quiz de Flutter e Dart'),
            ),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text('Você acertou\n ${args.acertos} de 10\n perguntas')
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 70,
                    child: ElevatedButton(
                        onPressed: () => {
                          Navigator.pushNamed(context, '/Quiz')
                        },
                        child: const Text(
                          'Jogar Novamente',
                          style: TextStyle(fontSize: 20),
                        )),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
