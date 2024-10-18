// ignore_for_file: avoid_print

void main() {
  Mundo.gravidade = 20;
  Mundo.duplicaGravidade();
  print(Mundo.gravidade);
}

class Mundo {
  static double gravidade = 9.81;

  Mundo();

  static void duplicaGravidade() {
    gravidade = gravidade * 2;
  }
}
