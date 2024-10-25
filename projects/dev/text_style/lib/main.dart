import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Texto 1\nTexto 2', 
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue[200],
            backgroundColor: Colors.yellow[50],
            height: 1.50,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            fontFamily: 'imagine',
          ),
        ),
      ),
    );
  }
}