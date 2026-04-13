import '../questao03/produto.dart';
import '../questao05/item_carrinho.dart';
import 'lista_carrinho.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);
  Produto p3 = Produto('Teclado Mecânico', 350.00, 15, true);

  ItemCarrinho item1 = ItemCarrinho(p1, 1);
  ItemCarrinho item2 = ItemCarrinho(p2, 2);
  ItemCarrinho item3 = ItemCarrinho(p3, 1);

  ListaCarrinho lista = ListaCarrinho();
  lista.inserir(item1);
  lista.inserir(item2);
  lista.inserir(item3);

  print('\nTamanho do carrinho: ${lista.tamanho()}');

  print('\nItem na posição 1:');
  lista.get(1)?.exibirItem();

  print('\nRemovendo item na posição 0:');
  lista.remover(0);

  print('\nLista final:');
  lista.exibirLista();
  print('Tamanho final: ${lista.tamanho()}');
}
