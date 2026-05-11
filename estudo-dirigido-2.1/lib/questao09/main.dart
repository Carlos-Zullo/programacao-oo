import 'pedido.dart';

void main() {
  Pedido p = Pedido('PED-001', 150.00);
  PedidoDelivery pd = PedidoDelivery(
      'PED-002', 200.00, 'Rua das Flores, 100 - Maringá', 15.00);

  print('=== Pedido Comum ===');
  p.exibirPedido();

  print('=== Pedido Delivery ===');
  pd.exibirPedido();
}
