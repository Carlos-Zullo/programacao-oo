import 'banco.dart';

void main() {
  Conta conta = Conta('Fernanda', 1000);
  Gerente g1 = Gerente('Marcos');
  Gerente g2 = Gerente('Patrícia');

  print('Estado inicial:');
  conta.exibir();

  g1.depositar(conta, 200);
  conta.exibir();

  g2.sacar(conta, 150);
  conta.exibir();
}
