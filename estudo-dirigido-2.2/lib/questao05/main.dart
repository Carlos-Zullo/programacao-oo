import 'pessoa.dart';

void main() {
  Pessoa aluno = Aluno('João Pedro', 20, '2024001', 'Sistemas de Informação');
  Pessoa prof = Professor('Carlos Lima', 45, 'Programação OO', 7500.00);

  aluno.exibirDados();
  prof.exibirDados();
}
