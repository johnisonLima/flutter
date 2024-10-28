import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  Uri uri = Uri.https('jsonplaceholder.typicode.com', '/todos/1');

  final future = http.get(uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada.');

      Map<String, dynamic> dados = jsonDecode(response.body);

      print(dados);
      print(dados['title']);
      
    } else {
      print('Erro.');
    }
  });
}
