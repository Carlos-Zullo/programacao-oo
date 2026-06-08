abstract class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);
}

abstract class Apresentavel {
  void exibirDados();
}

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno | Nome: $nome | Idade: $idade | Matrícula: $matricula | Curso: $curso');
  }

  @override
  String toString() {
    return 'Aluno | $nome | $idade anos | Matrícula: $matricula | Curso: $curso';
  }
}

class Professor extends Pessoa implements Apresentavel {
  String disciplina;
  double salario;

  Professor(String nome, int idade, this.disciplina, this.salario)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('Professor | Nome: $nome | Idade: $idade | Disciplina: $disciplina | Salário: R\$ ${salario.toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Professor | $nome | $idade anos | Disciplina: $disciplina | Salário: R\$ ${salario.toStringAsFixed(2)}';
  }
}

class Coordenador extends Pessoa implements Apresentavel {
  String area;
  int tempoExperiencia;

  Coordenador(String nome, int idade, this.area, this.tempoExperiencia)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('Coordenador | Nome: $nome | Idade: $idade | Área: $area | Experiência: $tempoExperiencia anos');
  }

  @override
  String toString() {
    return 'Coordenador | $nome | $idade anos | Área: $area | Experiência: $tempoExperiencia anos';
  }
}
