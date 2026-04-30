import 'produto.dart';

void main() {
  Produto p = Produto('Caderno', 15.90);
  ProdutoPerecivel pp = ProdutoPerecivel('Leite Integral', 5.50, '10/06/2026');

  print('=== Produto comum ===');
  p.exibir();

  print('=== Produto Perecível ===');
  pp.exibir();
}
