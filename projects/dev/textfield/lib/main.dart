import 'package:flutter/material.dart';

enum Genero{
  masculino,
  femenino,
  outro
}

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  String email = '';
  String senha = '';
  bool isChecked = false;
  Genero genero = Genero.femenino;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Página de Cadastro',
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


              Column(
                children: [
                  Row(
                    children: [
                      Radio(                
                        value: Genero.femenino, 
                        groupValue: genero, 
                        onChanged: (Genero? value){
                          setState(() {
                            genero = value!;
                          });
                        }
                      ),
                      const Text('Femenino'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(                
                        value: Genero.masculino, 
                        groupValue: genero, 
                        onChanged: (Genero? value){
                          setState(() {
                            genero = value!;
                          });
                        }
                      ),
                      const Text('Masculino'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(                
                        value: Genero.outro, 
                        groupValue: genero, 
                        onChanged: (Genero? value){
                          setState(() {
                            genero = value!;
                          });
                        }
                      ),
                      const Text('Outro'),
                    ],
                  ),
                ],
              ),



              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (bool? checked) {
                        setState(() {
                          isChecked = checked!;
                        });
                      }),
                  const Text('Concordo com os termos de uso do App')
                ],
              ),
              const Text('Esqueceu sua senha?'),
              ElevatedButton(
                onPressed: () {
                  print('Email $email');
                  print('Senha $senha');
                  print('Aceito termos $isChecked');
                  print('Gênero $genero');
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
