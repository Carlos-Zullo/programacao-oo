import 'produto.dart';
 
void main() {
  Produto p = Produto(1, 'Notebook', 3500.00, 10);
  p.exibirResumo();
 
  // Substituindo os atributos
  p.codigo = 2;
  p.nome = 'Mouse Gamer';
  p.precoUnitario = 150.00;
  p.quantidade = 20;
  p.exibirResumo();
}
