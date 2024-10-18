// ignore_for_file: avoid_print

void main() {
  Map<int, String> numeros = Map();

  numeros[1] = 'Um';
  numeros[2] = 'Dois';
  numeros[3] = 'Três';
  numeros[100] = 'Cem';

  Map<String, String> estados = Map();
  estados['SP'] = 'São Paulo';
  estados['RJ'] = 'Rio de Janeiro';
  estados['BA'] = 'Bahia';

  print(estados['SP']);
  print(estados.keys);
  print(estados.values);
}
