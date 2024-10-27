import 'dart:async';
import 'package:http/http.dart' as http;

void main() async {

  final uri = Uri.https('www.example.com', '/' );

  final future = http.get( uri);

  future.then((response) {
    if (response.statusCode == 200) {
      print('Página carregada com sucesso!');

      print(response.body);
    }
    if (response.statusCode == 301) {
      print('Página removida permanentimente!');
    }
    if (response.statusCode == 404) {
      print('Página não encontrada!');
    }
    if (response.statusCode == 500) {
      print('Erro interno no servidor!');
    }
  });

  future.catchError((err) {
    print('Error: $err');
    return err;
  }, test: (error) {
    return error is int && error >= 400;
  });

  future.whenComplete(() {
    print('Future completo!');
  });
}
