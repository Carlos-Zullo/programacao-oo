class Produto {
  String _nome;
  double _preco;
  int _estoque;

  Produto(this._nome, this._preco, this._estoque);

  void repor(int qtd) {
    if (qtd <= 0) {
      print('Quantidade inválida para reposição.');
      return;
    }
    _estoque += qtd;
    print('Estoque reposto. Novo estoque: $_estoque');
  }

  void vender(int qtd) {
    if (qtd <= 0) {
      print('Quantidade inválida para venda.');
      return;
    }
    if (qtd > _estoque) {
      print('Estoque insuficiente. Estoque atual: $_estoque');
      return;
    }
    _estoque -= qtd;
    print('Venda realizada. Estoque restante: $_estoque');
  }

  void exibirFicha() {
    print('-------------------------');
    print('Nome:    $_nome');
    print('Preço:   R\$ ${_preco.toStringAsFixed(2)}');
    print('Estoque: $_estoque');
    print('-------------------------');
  }
}
