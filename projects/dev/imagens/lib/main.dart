import 'package:flutter/material.dart';

void main(){
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Imagens', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Image.asset(
          'assets/images/cachorro.png', 
          // width: 200,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      )
    );
  }
}