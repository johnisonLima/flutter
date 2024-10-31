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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            endDrawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: Image.network('https://picsum.photos/50/50'),
                    accountName: const Text('Johnison'),
                    accountEmail: const Text('email@email.com')
                  ),
                  const DrawerHeader(
                    child: Text('Drawer Header'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.attach_money),
                    title: const Text('Menu Lateral'),
                    // subtitle: const Text('Selecione a opção no menu'),
                    onTap: () {
                      print('Clicou dólar');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Text('Editar Cadastro'),
                    onTap: () {
                      print('Clicou editar');
                    },
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: const Center(child: Text('Menu Lateral(Drawer)')),
              backgroundColor: Colors.blueGrey.shade200,
            ),
            body: const Center(
              child: Text('Meu aplicativo'),
            )));
  }
}
