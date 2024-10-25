import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.red[500],
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        )
      ),

      
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
        
              const Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Pergunta 1 de 10', 
                  style: TextStyle(fontSize: 20),
                ),
              ),
        
              const Text(
                'Pergunta', 
                style: TextStyle(fontSize: 20),
              ),
        
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  'Resposta 1', 
                  style: TextStyle(fontSize: 20),
                )
              ),
        
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  'Resposta 2', 
                  style: TextStyle(fontSize: 20),
                )
              ),
        
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  'Resposta 3', 
                  style: TextStyle(fontSize: 20),
                )
              ),
        
              ElevatedButton(
                onPressed: (){},
                child: const Text(
                  'Resposta 4', 
                  style: TextStyle(fontSize: 20),
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}