// ignore_for_file: avoid_print

void main() {
  Pessoa pessoa1 = Pessoa('João', 30);
  pessoa1.apresenta();

  Pessoa pai = Pai('José', 40, 'Arquiteto');
  pai.apresenta();

  Pessoa filho = Filho('Pedrinho', 7, 'Isa Medeiros');
  filho.apresenta();
}

class Pessoa {
  String nome = '';
  int idade = 20;

  Pessoa(this.nome, this.idade);

  void apresenta() {
    print('Meu nome é $nome e minha idade é $idade');
  }
}

class Pai extends Pessoa {
  String profissao = '';

  Pai(super.nome, super.idade, this.profissao);

  @override
  void apresenta() {
    print('Meu nome é $nome minha idade é $idade e sou $profissao.');
  }
}

class Filho extends Pessoa {
  String escola = '';
  Filho(super.nome, super.idade, this.escola);

  @override
  void apresenta() {
    print('Meu nome é $nome minha idade é $idade e estudo na $escola.');
  }
}
