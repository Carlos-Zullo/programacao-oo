abstract class Bonificavel {
  double calcularBonus();
}

abstract class Funcionario {
  String nome;
  double salario;

  Funcionario(this.nome, this.salario);

  @override
  String toString() {
    return 'Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class FuncionarioComum extends Funcionario implements Bonificavel {
  FuncionarioComum(String nome, double salario) : super(nome, salario);

  @override
  double calcularBonus() => salario * 0.05;

  @override
  String toString() {
    return 'Funcionário Comum | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
  }
}

class Gerente extends Funcionario implements Bonificavel {
  String setor;

  Gerente(String nome, double salario, this.setor) : super(nome, salario);

  @override
  double calcularBonus() => salario * 0.15;

  @override
  String toString() {
    return 'Gerente | Nome: $nome | Salário: R\$ ${salario.toStringAsFixed(2)} | Setor: $setor | Bônus: R\$ ${calcularBonus().toStringAsFixed(2)}';
  }
}
