// ignore_for_file: avoid_print

void main() {
  List<Pessoa> pessoas = [Pessoa('João', 25), Pessoa('Maria', 30)];

/*   print(pessoas[0].nome);
  print(pessoas[0].idade); */

  pessoas.add(Pessoa('Pedro', 20));
  pessoas.removeAt(0);
  // pessoas.forEach((Pessoa pessoa) => print(pessoa.nome));

  pessoas.forEach((Pessoa pessoa) {
    print(pessoa.nome);
    print(pessoa.idade);
  });


}

class Pessoa {
  String nome = '';
  int idade;

  Pessoa(this.nome, this.idade);

  void apresenta() {
    print('Meu nome é $nome e tenho $idade anos');
  }
}
