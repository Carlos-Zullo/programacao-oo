import '../questao08/endereco.dart';
 
class Pessoa {
  String nome;
  int idade;
  String cpf;
  Endereco endereco;
 
  Pessoa(this.nome, this.idade, this.cpf, this.endereco) {
    if (nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (idade < 0) throw ArgumentError('A idade deve ser maior ou igual a 0.');
    if (cpf.isEmpty) throw ArgumentError('O CPF não pode ser vazio.');
  }
 
  void exibirPessoa() {
    print('=========================');
    print('Nome:  $nome');
    print('Idade: $idade anos');
    print('CPF:   $cpf');
    print('Endereço:');
    endereco.exibirEndereco();
    print('=========================');
  }
}
 
