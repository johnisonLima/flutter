// ignore_for_file: avoid_print, dead_code

void main() {
  bool condicao = false;
  String nome = 'Deves';

  print(condicao ? 'Condição Verdadeira' : 'Condição falsa');

  print(2 < 3 ? 'Menor' : 'Menor ou igual');

  print(nome == 'Deves' ? 'Nome OK' : 'Nome Errado');
 
  String cliente = nome == 'Deves' ? 'Deves' : 'usuário';

  print(cliente);
}
