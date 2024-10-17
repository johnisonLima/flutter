// ignore_for_file: avoid_print

void main() {

  bool condicao = true;
  int i = 1;

  do {
    print(i);

    i++;

    if (i > 10) {
      condicao = false;
    }
    
  } while( condicao );




  /* bool condicao = true;
  int i = 1;

  while (condicao == true) {
    print(i);

    i++;

    if (i > 10) {
      condicao = false;
    }
  } */

  /* int i = 1;

  while (i < 10) {
    print(i);

    i++;
  } */
}
