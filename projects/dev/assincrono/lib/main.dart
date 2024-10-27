import 'dart:async';

void main () async{
  print(1);
  print(2);
  print(3);

  await quatro();

  print(5);
}

Future<void> quatro() async {
  return Future.delayed(
    const Duration(seconds: 3),
    () => print(4)
  );
}
