import 'pedido.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  pedidos.adicionar(PedidoDelivery('1001', 120.00, 'Rua A, 100', 15.00));
  pedidos.adicionar(PedidoRetirada('1002', 80.00, 'Ana'));
  pedidos.adicionar(PedidoExpress('1003', 200.00, 40.00));
  pedidos.adicionar(PedidoDelivery('1004', 150.00, 'Rua B, 250', 20.00));
  pedidos.adicionar(PedidoRetirada('1005', 60.00, 'Bruno'));

  print('=== Impressão da lista ===');
  pedidos.imprimirItens();

  print('\n=== Detalhes de cada pedido ===');
  for (var p in pedidos.obterItens()) {
    print('Valor final: R\$ ${p.valorFinal().toStringAsFixed(2)}');
    p.exibirPedido();
  }
}
