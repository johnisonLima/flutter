// ignore_for_file: avoid_print

void main() {
  List<String> pessoas = ['João', 'José', 'Pedro', 'Maria'];

  print(pessoas);

  pessoas.add('Antony');
  print(pessoas);
  print(pessoas[pessoas.length - 1]);

  pessoas.insert(2, 'Marcelo');
  print(pessoas);

  pessoas.removeAt(2);
  print(pessoas);

  bool existe = pessoas.contains('Maria');
  print(existe);

  pessoas.forEach(print);
}
