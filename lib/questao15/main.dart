import 'cofrinho.dart';

void main() {
  Cofrinho c = Cofrinho(0);

  c.exibirSaldo();
  c.depositar(10.00);
  c.depositar(25.50);
  c.depositar(5.00);
  c.depositar(100.00);
  c.depositar(50.00);
  c.exibirSaldo();
  c.quebrar();
  c.exibirSaldo();
}
