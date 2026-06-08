class Produto {
  String nome;
  double preco;

  Produto(this.nome, this.preco);
}

abstract class Exibivel {
  void exibir();
}

class ProdutoPerecivel extends Produto implements Exibivel {
  String dataValidade;

  ProdutoPerecivel(String nome, double preco, this.dataValidade)
      : super(nome, preco);

  @override
  void exibir() {
    print('Perecível | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade');
  }

  @override
  String toString() {
    return 'Perecível | $nome | R\$ ${preco.toStringAsFixed(2)} | Validade: $dataValidade';
  }
}

class ProdutoEletronico extends Produto implements Exibivel {
  int garantiaMeses;

  ProdutoEletronico(String nome, double preco, this.garantiaMeses)
      : super(nome, preco);

  @override
  void exibir() {
    print('Eletrônico | Nome: $nome | Preço: R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses');
  }

  @override
  String toString() {
    return 'Eletrônico | $nome | R\$ ${preco.toStringAsFixed(2)} | Garantia: $garantiaMeses meses';
  }
}
