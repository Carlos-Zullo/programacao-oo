import 'cupom_desconto.dart';

void main() {
  CupomDesconto cupom = CupomDesconto('PROMO10', 10.0, true);

  cupom.exibirCupom();

  // Alterando dados com setter
  cupom.percentual = 15.0;
  print('\nApós alterar percentual:');
  cupom.exibirCupom();

  // Testando cálculo de desconto
  double valor = 500.0;
  double desconto = cupom.calcularDesconto(valor);
  print('\nDesconto de ${cupom.percentual}% sobre R\$ ${valor.toStringAsFixed(2)}: R\$ ${desconto.toStringAsFixed(2)}');

  // Desativando e testando novamente
  cupom.desativar();
  cupom.calcularDesconto(valor);
}
