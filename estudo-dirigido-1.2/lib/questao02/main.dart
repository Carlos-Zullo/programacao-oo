import 'produto.dart';

void main() {
  Produto p = Produto('Notebook', 3500.00, 10);

  p.exibirFicha();
  p.vender(3);
  p.repor(5);
  p.vender(15); // tentativa com estoque insuficiente
  p.exibirFicha();
}
