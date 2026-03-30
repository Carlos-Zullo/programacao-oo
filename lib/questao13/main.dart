import 'pedido.dart';
import '../questao06/produto.dart';
 
void main() {
  Produto p1 = Produto(1, 'Teclado Mecânico', 350.00, 2);
  Produto p2 = Produto(2, 'Monitor 24"', 1200.00, 1);
 
  Pedido ped1 = Pedido(1001, p1, 2);
  Pedido ped2 = Pedido(1002, p2, 1);
 
  ped1.exibirPedido();
  ped2.exibirPedido();
}
