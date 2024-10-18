// ignore_for_file: avoid_print

enum Telas {
  splashScreen,
  homePage,
  login,
}

void main() {
  Telas tela = Telas.homePage;

  switch (tela) {
    case Telas.splashScreen:
      print('Logo');
      break;

    case Telas.homePage:
      print('Home');
      break;

    case Telas.login:
      print('Login');
      break;
  }
}
