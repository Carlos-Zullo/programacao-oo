import 'conta.dart';

void main() {
  Conta c1 = Conta.bancaria('001-1', 'Ana Silva');
  Conta c2 = Conta.vip('002-2', 'Carlos Souza', 5000.00);

  print('=== Conta Bancária ===');
  c1.exibirResumo();
  c1.depositar(500.00);
  c1.sacar(200.00);
  c1.exibirResumo();

  print('=== Conta VIP ===');
  c2.exibirResumo();
  c2.depositar(1000.00);
  c2.sacar(300.00);
  c2.exibirResumo();
}
