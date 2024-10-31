
class Produtos {
  final List produtos;

  Produtos(this.produtos);
}

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
