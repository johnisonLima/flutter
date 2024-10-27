import 'dart:async';

void main() {
  Future<void> quatro = Future.delayed(const Duration(seconds: 3));

  print(1);
  print(2);
  print(3);
  
  quatro.then(
    (value) => print(4),
  );

  print(5);
}
