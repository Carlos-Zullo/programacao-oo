import '../questao03/produto.dart';
import 'lista_produto.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);
  Produto p3 = Produto('Teclado Mecânico', 350.00, 15, true);

  ListaProduto lista = ListaProduto();
  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  print('\nTamanho da lista: ${lista.tamanho()}');

  print('\nProduto na posição 1:');
  lista.get(1)?.exibirProduto();

  print('\nRemovendo produto na posição 0:');
  lista.remover(0);

  print('\nLista final:');
  lista.exibirLista();
  print('Tamanho final: ${lista.tamanho()}');
}
