// ignore_for_file: avoid_print

void main() {
  String nome = '    Deves Neves';

  print(nome);

  print(nome.toLowerCase());

  print(nome.toUpperCase());

  nome = nome.trim();
  print(nome);

  print(nome.substring(0, nome.indexOf(' ')));

  print(nome.split(' '));

  nome = nome.padLeft(12, '-');
  print(nome);
}
