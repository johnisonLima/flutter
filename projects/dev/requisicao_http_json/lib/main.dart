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

      Album album = Album.fromJson(dados);

      print(album.title);
      print(album.toJson());
    } else {
      print('Erro.');
    }
  });
}

class Album {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Album({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  Map<String, dynamic> toJson() => {
    'userId': this.userId,
    'id': this.id,
    'title': this.title,
    'completed': this.completed,
  };
}
