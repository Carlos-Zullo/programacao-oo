abstract class Pedido {
  String codigo;
  double valorTotal;

  Pedido(this.codigo, this.valorTotal);
}

abstract class Processavel {
  double valorFinal();
  void exibirPedido();
}

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String codigo, double valorTotal, this.enderecoEntrega,
      this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() {
    print('Delivery | Código: $codigo | Endereço: $enderecoEntrega | Taxa: R\$ ${taxaEntrega.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Delivery | $codigo | Subtotal: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa: R\$ ${taxaEntrega.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(String codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal;

  @override
  void exibirPedido() {
    print('Retirada | Código: $codigo | Cliente: $nomeCliente | Total: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Retirada | $codigo | Cliente: $nomeCliente | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(String codigo, double valorTotal, this.taxaUrgencia)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() {
    print('Express | Código: $codigo | Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Express | $codigo | Subtotal: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
