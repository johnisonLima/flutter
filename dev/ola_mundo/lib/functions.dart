// ignore_for_file: avoid_print

void main() {
  int valor = 50;

  ePar(valor) ? print('$valor é par') : print('$valor é ímpar');

  minhaFuncao('Deves');

  /* int resultado = multiplaDois(valor);

  print('O dobro de $valor é $resultado'); */
}

void printNome(String nome) {
  print('Nome: $nome');
}

void printNomeIdade(String nome, int idade) {
  print('Nome: $nome');
  print('Idade: $idade');
}

int multiplaDois(int valor) {
  return valor * 2;
}

bool ePar(int numero) {
  if (numero % 2 == 0) {
    return true;
  }

  return false;
}

void minhaFuncao(String nome, [String? telefone = '00-000-0000']) {
  print('Nome: $nome, Telefone: $telefone');
}
