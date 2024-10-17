// ignore_for_file: avoid_print

void main() {
  Pessoa pessoa1 = Pessoa('Deves', 1, '11988413654');
  pessoa1.apresenta();

  print(pessoa1._idade);
}

class Pessoa {
  // Propieddes da classe - Variáveis
  String nome = '';
  int _idade = 0;
  String telefone = '';

  Pessoa(this.nome, int idade, this.telefone) {
    this.idade = idade;
  }

  set idade(int idade) {
    if(idade < 120 && idade >= 0){
      _idade = idade;
    }
  }

  int get idade {
    return _idade;
  }

  // Metodos da Classe - Funções
  void apresenta() {
    print('Meu nome é $nome tenho $idade anos e meu telefone é $telefone.');
  }
}
