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
  String numero = '0';
  double espace = 15.0;
  int maximoNumerosTela = 6;

  double primeiroNumero = 0.0;
  String operacao = '';

  void calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '.':
        setState(() {
          if (numero.length <= maximoNumerosTela) {
            numero += tecla;

            if (!numero.contains('.')) {
              int numeroInt = int.parse(numero);
              numero = numeroInt.toString();
            }
          }
        });

        break;

      case '+':
      case '-':
      case 'x':
      case '/':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';

        break;

      case '=':
        double resultado = 0.0;

        switch (operacao) {
          case '+':
            resultado = primeiroNumero + double.parse(numero);
            break;

          case '-':
            resultado = primeiroNumero - double.parse(numero);
            break;

          case '/':
            if (double.parse(numero) * 1 == 0) {
              return;
            }
            resultado = primeiroNumero / double.parse(numero);
            break;

          case 'x':
            resultado = primeiroNumero * double.parse(numero);
            break;

          default:
            break;
        }

        String resultadoString = resultado.toString();
        dynamic resultadoFormatado;

        List<String> resultadoPartes = resultadoString.split('.');
        if (int.parse(resultadoPartes[1]) * 1 == 0) {
          resultadoFormatado = int.parse(resultadoPartes[0]);
        } else {
          resultadoFormatado = resultado;
        }

        setState(() {
          numero = resultadoFormatado.toString();
        });

        break;

      case 'AC':
        setState(() => numero = '0');
        break;

      case '<x':
        setState(() {
          if (numero.isNotEmpty) {
            numero = numero.substring(0, numero.length - 1);
          } else {
            numero = '0';
          }
        });

        break;

      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Calculadora',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        color: Colors.grey[800],
        padding: EdgeInsets.only(left: espace, right: espace),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(left: espace, right: espace),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    numero,
                    style: TextStyle(
                        fontSize: 100,
                        fontFamily: 'ds-dig',
                        color: Colors.grey[900]),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.only(bottom: espace, top: espace),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => calcular('AC'),
                      child: Image.asset('assets/images/tecla-ce.png'),
                    ),
                    const Text(' '),
                    const Text(' '),
                    GestureDetector(
                      onTap: () => calcular('<x'),
                      child: Image.asset('assets/images/tecla-apagar.png'),
                    ),
                  ],
                ),
                SizedBox(height: espace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => calcular('7'),
                      child: Image.asset('assets/images/tecla-sete.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('8'),
                      child: Image.asset('assets/images/tecla-oito.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('9'),
                      child: Image.asset('assets/images/tecla-nove.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('/'),
                      child: Image.asset('assets/images/tecla-divisao.png'),
                    ),
                  ],
                ),
                SizedBox(height: espace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => calcular('4'),
                      child: Image.asset('assets/images/tecla-quatro.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('5'),
                      child: Image.asset('assets/images/tecla-cinco.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('6'),
                      child: Image.asset('assets/images/tecla-seis.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('x'),
                      child: Image.asset('assets/images/tecla-vezes.png'),
                    ),
                  ],
                ),
                SizedBox(height: espace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => calcular('1'),
                      child: Image.asset('assets/images/tecla-um.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('2'),
                      child: Image.asset('assets/images/tecla-dois.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('3'),
                      child: Image.asset('assets/images/tecla-tres.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('-'),
                      child: Image.asset('assets/images/tecla-menos.png'),
                    ),
                  ],
                ),
                SizedBox(height: espace),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () => calcular('0'),
                      child: Image.asset('assets/images/tecla-zero.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('.'),
                      child: Image.asset('assets/images/tecla-ponto.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('='),
                      child: Image.asset('assets/images/tecla-igual.png'),
                    ),
                    GestureDetector(
                      onTap: () => calcular('+'),
                      child: Image.asset('assets/images/tecla-mais.png'),
                    ),
                  ],
                ),
              ]),
            ),
            const Text(' '),
          ],
        ),
      ),
    ));
  }
}
