import 'pedido.dart';

void main() {
  Pedido pd = PedidoDelivery('PED-001', 150.00, 'Rua das Flores, 100', 15.00);
  Pedido pr = PedidoRetirada('PED-002', 80.00, 'Ana Silva');

  pd.exibirPedido();
  pr.exibirPedido();
}
