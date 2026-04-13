import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import 'pedido.dart';

void main() {
  Cliente c = Cliente('Ana Silva', 'ana@email.com', 500.0, true);

  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);

  Carrinho carrinho = Carrinho(c);
  carrinho.adicionarItem(ItemCarrinho(p1, 1));
  carrinho.adicionarItem(ItemCarrinho(p2, 2));

  CupomDesconto cupom = CupomDesconto('DESCONTO10', 10.0, true);

  Pedido pedido = Pedido('PED-001', carrinho, cupom);

  pedido.fecharPedido();
  pedido.exibirResumoPedido();
}
