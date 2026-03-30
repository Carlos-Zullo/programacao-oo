import 'pessoa.dart';

void main() {
  Pessoa p1 = Pessoa('Ana Silva', 22);
  Pessoa p2 = Pessoa('Carlos Souza', 35);
  Pessoa p3 = Pessoa('Maria Oliveira', 17);

  p1.exibirDados();
  p2.exibirDados();
  p3.exibirDados();
}
