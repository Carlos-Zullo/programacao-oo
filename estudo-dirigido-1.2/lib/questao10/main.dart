import 'caixa.dart';

void main() {
  Caixa caixa = Caixa(10);

  print('Estado inicial:');
  caixa.exibir();

  alterarValor(caixa);
  print('\nDepois de alterarValor:');
  caixa.exibir();

  trocarCaixa(caixa);
  print('\nDepois de trocarCaixa:');
  caixa.exibir(); // continua com valor 99 — trocarCaixa não afetou
}
