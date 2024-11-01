import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const App());
}

class ContadorBloc {
  StreamController<int> valorSink = StreamController();

  Stream<int> get ValorStream => valorSink.stream;

  ContadorBloc() {
    valorSink.add(0);
  }

  dispose() {
    valorSink.close();
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String texto = 'Bloc State Managemet';
  int valor = 1;

  ContadorBloc bloc = ContadorBloc();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: StreamBuilder<int>(
        stream: bloc.ValorStream,
        builder: (context, snapshot) => Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                texto,
                style: TextStyle(color: Colors.red[700]),
              ),
            ),
          ),
          body: GestureDetector(
            onTap: () {              
              bloc.valorSink.add(snapshot.data! + 1);
            },
            child: Center(
              child: Text(
                snapshot.data.toString(),
                textDirection: TextDirection.ltr,
                style: const TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
