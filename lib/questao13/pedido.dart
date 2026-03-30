import '../questao06/produto.dart';

class Pedido {
  int numero;
  Produto produto;
  int quantidade;

  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0) throw ArgumentError('O número deve ser maior que 0.');
    if (quantidade <= 0) throw ArgumentError('A quantidade deve ser maior que 0.');
  }

  double calcularTotal() {
    return produto.precoUnitario * quantidade;
  }

  void exibirPedido() {
    print('=========================');
    print('Pedido Nº: $numero');
    print('Produto:   ${produto.nome}');
    print('Preço un.: R\$ ${produto.precoUnitario.toStringAsFixed(2)}');
    print('Quantidade: $quantidade');
    print('Total:     R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('=========================');
  }
}
