import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';
import '../questao09/pedido.dart';
import 'loja.dart';

void main() {
  Loja loja = Loja('Tech Store');

  // Clientes
  Cliente c1 = Cliente('Ana Silva', 'ana@email.com', 500.0, true);
  Cliente c2 = Cliente('Carlos Souza', 'carlos@email.com', 300.0, true);
  loja.cadastrarCliente(c1);
  loja.cadastrarCliente(c2);

  // Produtos
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);
  Produto p3 = Produto('Teclado Mecânico', 350.00, 15, true);
  loja.cadastrarProduto(p1);
  loja.cadastrarProduto(p2);
  loja.cadastrarProduto(p3);

  // Pedido 1 — Ana com cupom
  Carrinho carrinho1 = Carrinho(c1);
  carrinho1.adicionarItem(ItemCarrinho(p1, 1));
  carrinho1.adicionarItem(ItemCarrinho(p2, 2));
  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);
  Pedido ped1 = Pedido('PED-001', carrinho1, cupom);
  ped1.fecharPedido();
  loja.registrarPedido(ped1);

  // Pedido 2 — Carlos sem cupom
  Carrinho carrinho2 = Carrinho(c2);
  carrinho2.adicionarItem(ItemCarrinho(p3, 2));
  Pedido ped2 = Pedido('PED-002', carrinho2);
  ped2.fecharPedido();
  loja.registrarPedido(ped2);

  // Resumo geral
  loja.exibirResumoLoja();
}
