import '../questao03/produto.dart';

class ItemCarrinho {
  Produto _produto;
  int _quantidade;

  ItemCarrinho(this._produto, this._quantidade) {
    if (_quantidade <= 0) throw ArgumentError('A quantidade deve ser maior que zero.');
  }

  // Getters
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  // Setters
  set produto(Produto valor) => _produto = valor;

  set quantidade(int valor) {
    if (valor <= 0) throw ArgumentError('A quantidade deve ser maior que zero.');
    _quantidade = valor;
  }

  double calcularSubtotal() => _produto.preco * _quantidade;

  void exibirItem() {
    print('-------------------------');
    print('Produto:   ${_produto.nome}');
    print('Preço un.: R\$ ${_produto.preco.toStringAsFixed(2)}');
    print('Qtd:       $_quantidade');
    print('Subtotal:  R\$ ${calcularSubtotal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
