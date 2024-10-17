// ignore_for_file: avoid_print

void main() {
  Personagem jogador1 = Jogador('Hero', 10, 10);
  Personagem inimigo1 = Inimigo('Inimigo', 10, 20);

  jogador1.mostra();
  inimigo1.mostra();

  if (inimigo1.getPosicaoX() == jogador1.getPosicaoX()) {
    print('Luta');
  }
}

abstract class Personagem {
  int posicaoX = 0;
  int posicaoY = 0;
  String nome = '';

  Personagem(this.nome, this.posicaoX, this.posicaoY);

  void mostra() {
    print('$nome está na $posicaoX e $posicaoY');
  }

  int getPosicaoX() => posicaoX;
  int getPosicaoY() => posicaoY;
}

class Jogador extends Personagem {
  Jogador(super.nome, super.posicaoX, super.posicaoY);
}

class Inimigo extends Personagem {
  Inimigo(super.nome, super.posicaoX, super.posicaoY);
}
