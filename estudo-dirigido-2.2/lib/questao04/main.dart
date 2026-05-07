import 'conta.dart';

void main() {
  ContaPoupanca cp = ContaPoupanca('Ana Silva', 1000.00);
  ContaCorrente cc = ContaCorrente('Carlos Souza', 2000.00);

  print('=== Conta Poupança ===');
  cp.exibirSaldo();
  cp.depositar(500.00);
  cp.aplicarRendimento();
  cp.exibirSaldo();

  print('=== Conta Corrente ===');
  cc.exibirSaldo();
  cc.depositar(300.00);
  cc.aplicarRendimento();
  cc.exibirSaldo();
}