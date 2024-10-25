import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        fontFamily: 'imagine',
      ),

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo fonte externa', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.lightBlue,
        ),
        body: Center(
          child: Text(
          'Texto 1\nTexto 2', 
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue[200],                      
          ),
        ),
        ),
      ),
    );
  }
}
