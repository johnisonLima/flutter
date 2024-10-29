import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> listaProdutos = List<String>.generate(20, (i) => 'Produto $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: listaProdutos.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listaProdutos[index]),
              onTap: () {
                print(listaProdutos[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
