import 'funcionario.dart';

void main() {
  Funcionario f = Funcionario('Carlos Silva', 3500.00);
  Gerente g = Gerente('Ana Souza', 7000.00, 'Tecnologia');

  print('=== Funcionário ===');
  f.exibirDados();

  print('=== Gerente ===');
  g.exibirDados();
}
