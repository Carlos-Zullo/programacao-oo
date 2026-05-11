import 'funcionario.dart';

void main() {
  Funcionario f = FuncionarioComum('João Silva', 2500.00);
  Funcionario g = Gerente('Maria Souza', 6000.00, 'Financeiro');

  f.exibirDados();
  g.exibirDados();
}
