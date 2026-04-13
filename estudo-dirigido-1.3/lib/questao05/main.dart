import '../questao03/produto.dart';
import 'item_carrinho.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 3);

  print('=== Itens do Carrinho ===');
  item1.exibirItem();
  item2.exibirItem();

  // Alterando quantidade com setter
  item2.quantidade = 5;
  print('\nApós alterar quantidade do item 2:');
  item2.exibirItem();
}
