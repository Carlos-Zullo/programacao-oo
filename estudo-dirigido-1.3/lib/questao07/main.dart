import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import 'carrinho.dart';

void main() {
  Cliente c = Cliente('Ana Silva', 'ana@email.com', 500.0, true);

  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);

  Carrinho carrinho = Carrinho(c);
  carrinho.adicionarItem(item1);
  carrinho.adicionarItem(item2);

  carrinho.exibirCarrinho();
}
