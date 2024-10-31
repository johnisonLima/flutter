import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/produtos.dart';
import 'produtodetalhe.dart';

class ListarProdutos extends StatefulWidget {
  const ListarProdutos({super.key});

  @override
  State<ListarProdutos> createState() => _ListarProdutosState();
}

class _ListarProdutosState extends State<ListarProdutos> {
  var dadosBackend;

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
            if (snapshot.data == null) {
              return const Text('Carregando..');
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  dadosBackend = snapshot.data[index];
                  return ListTile(
                    leading: Image.network(dadosBackend.imagem),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${dadosBackend.produto}',
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Preço: R\$ ${dadosBackend.preco}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                    subtitle: Text(
                      '${dadosBackend.descricao.toString().substring(0, 20)} ...',
                    ),
                    onTap: () {
                      print(dadosBackend.produto);

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return ProdutoDetalhe(
                            produtoId: snapshot.data[index].produtoId,
                            produto: snapshot.data[index].produto,
                            descricao: snapshot.data[index].descricao,
                            preco: snapshot.data[index].preco,
                            imagem: snapshot.data[index].imagem,
                          );
                        }),
                      );
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
