class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido() {
    print('-------------------------');
    print('Código:      $codigo');
    print('Valor Total: R\$ ${valorTotal.toStringAsFixed(2)}');
    print('-------------------------');
  }
}

class PedidoDelivery extends Pedido {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String codigo, double valorTotal, this.enderecoEntrega,
      this.taxaEntrega)
      : super(codigo, valorTotal);

  double calcularValorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() {
    super.exibirPedido();
    print('Endereço:    $enderecoEntrega');
    print('Taxa:        R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Total Final: R\$ ${calcularValorFinal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
