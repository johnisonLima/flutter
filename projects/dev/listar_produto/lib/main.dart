import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<String> listaProdutos = List<String>.generate(20, (i) => 'Produto $i');

  Future<List<Produto>> _getProdutos() async {
    var api =
        'https://api.json-generator.com/templates/FtmrSSvrHqdz/data?access_token=7bl2jtcmwq84scwv1rswvgnswygofyz1mndd0lu6';
    Uri uri = Uri.parse(api);

    var response = await http.get(uri);

    var dados = json.decode(response.body) as List;

    // Convertendo cada item da lista em um objeto Todo
    List<Produto> produtos =
        dados.map((item) => Produto.fromJson(item)).toList();

    return produtos;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'List View',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: FutureBuilder(
          future: _getProdutos(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.data == null){
              return const Text('Carregando..');
            }
            else{
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${snapshot.data[index].produto}, ${snapshot.data[index].descricao}',                      
                    ),
                    onTap: () {
                      print(snapshot.data[index].produto);
                    },
                  );
                },
              );
            }            
          },
        ),
      ),
    );
  }
}

class Produtos {
  final List produtos;

  Produtos(this.produtos);
}

/* {
    "produto_id": "67217b33c4c84ae98d3a4649",
    "produto": "eu adipisicing exercitation",
    "endereco": "School Lane 58, Wright, Oklahoma",
    "descricao": "Aliquip mollit veniam ex ullamco in. Aliquip eu magna consequat esse occaecat sunt aliqua est ad occaecat aliqua sint dolore ut.",
    "imagem": "http://placehold.it/128x128",
    "quantidade": "46",
    "preco": "973.13"
  } */

class Produto {
  final String produtoId;
  final String produto;
  final String endereco;
  final String descricao;
  final String imagem;
  final String quantidade;
  final String preco;

  Produto({
    required this.produtoId,
    required this.produto,
    required this.endereco,
    required this.descricao,
    required this.imagem,
    required this.quantidade,
    required this.preco,
  });

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      produtoId: json['produtoId'],
      produto: json['produto'],
      endereco: json['endereco'],
      descricao: json['descricao'],
      imagem: json['imagem'],
      quantidade: json['quantidade'],
      preco: json['preco'],
    );
  }

  Map<String, dynamic> toJson() => {
        'produtoId': produtoId,
        'produto': produto,
        'endereco': endereco,
        'descricao': descricao,
        'imagem': imagem,
        'quantidade': quantidade,
        'preco': preco,
      };
}
