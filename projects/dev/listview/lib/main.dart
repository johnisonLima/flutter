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
  List<String> listaProdutos = [];

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i <= 100; i++) {
      listaProdutos.add('Produto $i');
    }

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
