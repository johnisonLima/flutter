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
        endDrawer: Builder(
          builder: (context) => Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                    currentAccountPicture:
                        Image.network('https://picsum.photos/50/50'),
                    accountName: const Text('Johnison'),
                    accountEmail: const Text('email@email.com')),
                const DrawerHeader(
                  child: Text('Drawer Header'),
                ),
                ListTile(
                    leading: const Icon(Icons.attach_money),
                    title: const Text('Tela 1'),
                    // subtitle: const Text('Selecione a opção no menu'),
                    onTap: () {
                      Navigator.of(context).pop();

                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return const Tela1();
                        }),
                      );
                    }),
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Tela 2'),
                  onTap: () {
                    Navigator.of(context).pop();

                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return const Tela2();
                      }),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: const Center(child: Text('Menu Lateral(Drawer)')),
          backgroundColor: Colors.blueGrey.shade200,
        ),
        body: const Center(
          child: Text('Meu aplicativo'),
        ),
      ),
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tela 1',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Voltar para aplicativo'),
        ),
      ),
    ));
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  static const rountName = '/tela2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tela 2',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Voltar para aplicativo'),
          ),
        ),
      ),
    );
  }
}
