// ignore_for_file: avoid_print

void main() {
  // Produto
  int codigo = 1;
  // Preço
  double preco = 3.14;
  // Nome
  String nome = 'Pen-drive';
  // Venda
  bool venda = true;
  // Variavel que pode mudar o tipo
  dynamic varDinamica = 2;
  varDinamica = 'Mudou';

  // Variavel que não pode mudar o tipo após ser atribuido
  var variavel = 1;

  print(codigo);
  print(preco);
  print(nome);
  print(venda);

  print(variavel);
  print(varDinamica);

  // CONCATENAÇÃO DE VARIAVEIS
  print('Código: $codigo');
  print('Produto de codigo $codigo é $nome e o valor do produto é $preco');
}
