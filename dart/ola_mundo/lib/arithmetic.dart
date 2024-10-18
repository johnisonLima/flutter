// ignore_for_file: avoid_print

void main() {
  int numero = 2;
  int numero2 = 2;
  int adicao = numero + numero2;
  int subtracao = numero - numero2;
  int multiplicacao = numero * numero2;
  double divisao = numero / numero2;
  int divisaoInteira = numero ~/ numero2;
  int divisaoResto = numero % numero2;

  print('Variavel número 1 vale $numero');
  print('Variavel número 2 vale $numero2');

  print('');
  print('Adição $adicao');

  print('');
  print('Subtração $subtracao');

  print('');
  print('Multiplicação $multiplicacao');

  print('');
  print('Divisão $divisao');

  print('');
  print('Divisão Inteiro $divisaoInteira');

  print('');
  print('Divisão Resto $divisaoResto');

  if (numero % 2 == 0) {
    print('$numero é par');
  } else {
    print('$numero é ímpar');
  }
}
