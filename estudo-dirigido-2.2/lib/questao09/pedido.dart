abstract class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);

  void exibirPedido(); // método abstrato
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
    print('Pedido Delivery');
    print('Código:    $codigo');
    print('Subtotal:  R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Endereço:  $enderecoEntrega');
    print('Taxa:      R\$ ${taxaEntrega.toStringAsFixed(2)}');
    print('Total:     R\$ ${calcularValorFinal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}

class PedidoRetirada extends Pedido {
  String nomeCliente;

  PedidoRetirada(String codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  void exibirPedido() {
    print('Pedido Retirada');
    print('Código:  $codigo');
    print('Total:   R\$ ${valorTotal.toStringAsFixed(2)}');
    print('Cliente: $nomeCliente');
    print('-------------------------');
  }
}
