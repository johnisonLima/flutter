import 'package:flutter/material.dart';
import 'package:quiz/telas/resultado.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta": "Quem descobriu o Brasil?",
        "respostas": [
          "Joana D'Arque",
          "Pedro Alvares Cabral",
          "Tiradentes",
          "Dom Pedro II"
        ],
        "alternativa_correta": 2
      }
    ];

    quiz.add({
      "pergunta": "Flutter é?",
      "respostas": [
        "Uma liguaguem",
        "Um aplicativo",
        "Um SDK",
        "Um notebook",
      ],
      "alternativa_correta": 3
    });

    for (int i = 3; i <= 20; i++) {
      quiz.add({
        "pergunta": "Pergnta $i",
        "respostas": [
          "Resposta 1",
          "Resposta 2",
          "Resposta 3",
          "Resposta 4",
        ],
        "alternativa_correta": 1
      });
    }

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          acertos++;
        } else {
          erros++;
        }

        if (perguntaNumero == 10) {
          Navigator.pushNamed(context, '/Resultado',
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.red[500],
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue,
            )),
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Quiz de Flutter e Dart',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Pergunta $perguntaNumero de 10',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'Pergunta: ${quiz[perguntaNumero - 1]["pergunta"]}',
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                      onPressed: () {
                        respondeu(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]["respostas"][0],
                        style: const TextStyle(fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                      onPressed: () {
                        respondeu(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]["respostas"][1],
                        style: const TextStyle(fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                      onPressed: () {
                        respondeu(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]["respostas"][2],
                        style: const TextStyle(fontSize: 20),
                      )),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ElevatedButton(
                      onPressed: () {
                        respondeu(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]["respostas"][3],
                        style: const TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}
