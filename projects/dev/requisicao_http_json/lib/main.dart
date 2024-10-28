import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/');

  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada.');

      var list = jsonDecode(response.body) as List;

      list.forEach((elemento) {
        print(elemento['id']);
      });

    } else {
      print('Erro.');
    }
  });
}
