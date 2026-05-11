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
    print('Produto Perecível');
    print('Nome:     $nome');
    print('Preço:    R\$ ${preco.toStringAsFixed(2)}');
    print('Validade: $dataValidade');
    print('-------------------------');
  }
}
