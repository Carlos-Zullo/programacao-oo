class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade) {
    if (nome.isEmpty) {
      throw ArgumentError('O nome não pode ser vazio.');
    }
    if (idade < 0) {
      throw ArgumentError('A idade deve ser maior ou igual a 0.');
    }
  }

  void exibirDados() {
    print('-------------------------');
    print('Nome:  $nome');
    print('Idade: $idade anos');
    print('-------------------------');
  }
}
