import 'aluno.dart';

void main() {
  Aluno a1 = Aluno(ra: '001', nome: 'Ana Silva', notaFinal: 8.5);
  Aluno a2 = Aluno(ra: '002', nome: 'Carlos Souza', notaFinal: 4.0);

  a1.exibirBoletim();
  a2.exibirBoletim();
}
