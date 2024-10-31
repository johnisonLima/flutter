import 'package:flutter/material.dart';

class ProdutoDetalhe extends StatefulWidget {
  final String? produtoId;
  final String? produto;
  final String? descricao;
  final String? imagem;
  final String? preco;

  const ProdutoDetalhe(
      {super.key, this.produtoId, this.produto, this.descricao, this.preco, this.imagem});

  @override
  State<ProdutoDetalhe> createState() => _ProdutoDetalheState();
}

class _ProdutoDetalheState extends State<ProdutoDetalhe> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tela Detalhes Produto',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.amber[600],
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                widget.imagem.toString(),
                fit: BoxFit.fill,
                width: double.infinity,
              ),
              Text(
                widget.produto.toString(),
                style: const TextStyle(fontSize: 20.0),
              ),
              Text(
                'R\$: ${widget.preco.toString()}',
                style: const TextStyle(fontSize: 30.0),
              ),
              ElevatedButton(
                child: const Text('Retornar a página de detalhes'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
