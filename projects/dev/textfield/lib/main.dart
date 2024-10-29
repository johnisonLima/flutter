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
    String email = '';
    String senha = '';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Página de Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Insira seus dados:',
                style: TextStyle(fontSize: 20, color: Colors.blue[800]),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'E-mail'),
                onChanged: (text) {
                  if (text.contains('@')) {
                    print('Email válido');
                  } else {
                    print('Email iválido');
                  }
                  email = text;
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Senha'),
                obscureText: true,
                onChanged: (text) {
                  senha = text;
                },
              ),
              const Text('Esqueceu sua senha?'),
              ElevatedButton(
                onPressed: () {
                  print('Email $email');
                  print('Senha $senha');
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
