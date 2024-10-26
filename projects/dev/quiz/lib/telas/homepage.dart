import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
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
              'Quiz de flutter e Dart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 300,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Quiz');
                    },
                    child: const Text(
                      'Jogar',
                      style: TextStyle(fontSize: 50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
