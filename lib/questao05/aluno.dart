class Aluno {
  String nome;
  double nota1;
  double nota2;
 
  Aluno(this.nome, this.nota1, this.nota2) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (nota1 < 0 || nota1 > 10) {
      throw ArgumentError('A nota1 deve estar entre 0 e 10.');
    }
    if (nota2 < 0 || nota2 > 10) {
      throw ArgumentError('A nota2 deve estar entre 0 e 10.');
    }
  }
 
  double calcularMedia() {
    return (nota1 + nota2) / 2;
  }
 
  String verificarAprovacao() {
    return calcularMedia() >= 6 ? 'Aprovado ✅' : 'Reprovado ❌';
  }
 
  void exibirBoletim() {
    print('-------------------------');
    print('Aluno:  $nome');
    print('Nota 1: $nota1');
    print('Nota 2: $nota2');
    print('Média:  ${calcularMedia().toStringAsFixed(1)}');
    print('Situação: ${verificarAprovacao()}');
    print('-------------------------');
  }
}
