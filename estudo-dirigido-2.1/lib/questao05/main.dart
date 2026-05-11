import 'pessoa.dart';

void main() {
  Pessoa p = Pessoa('Maria Oliveira', 30);
  Aluno a = Aluno('João Pedro', 20, '2024001', 'Sistemas de Informação');

  print('=== Pessoa ===');
  p.exibirDados();

  print('=== Aluno ===');
  a.exibirDados();
}
