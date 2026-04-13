import 'produto.dart';

void main() {
  Produto p1 = Produto('Notebook', 3500.00, 10, true);
  Produto p2 = Produto('Mouse Gamer', 150.00, 25, true);

  // Alterando dados com setters
  p1.preco = 3200.00;
  p2.nome = 'Mouse Gamer RGB';

  // Operações de estoque
  p1.reporEstoque(5);
  p2.retirarEstoque(10);

  // Desativando p2
  p2.desativar();

  print('=== Dados Finais ===');
  p1.exibirProduto();
  p2.exibirProduto();
}
