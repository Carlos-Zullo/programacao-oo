class Funcionario {
  String _nome;
  String _cargo;
  double _salario;

  // Construtor estagiário
  Funcionario.estagiario(String nome)
      : _nome = nome,
        _cargo = 'Estagiário',
        _salario = 800.0;

  // Construtor pleno
  Funcionario.pleno(String nome, double salario)
      : _nome = nome,
        _cargo = 'Pleno',
        _salario = salario;

  // Construtor gerente com parâmetro nomeado e bônus opcional
  Funcionario.gerente({required String nome, double bonus = 1000})
      : _nome = nome,
        _cargo = 'Gerente',
        _salario = 8000.0 + bonus;

  double calcularPagamentoMensal() => _salario;

  void exibirDados() {
    print('-------------------------');
    print('Nome:      $_nome');
    print('Cargo:     $_cargo');
    print('Salário:   R\$ ${calcularPagamentoMensal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}

/*
  RESPOSTAS:

  a) Qual é a vantagem de usar construtores nomeados?
     Cada construtor deixa claro o contexto de criação do objeto.
     O código fica mais legível e semântico — ao ler "Funcionario.estagiario('João')"
     já se sabe que é um estagiário, sem precisar passar cargo e salário manualmente.

  b) O que muda no estado inicial conforme o construtor?
     Cada construtor define valores padrão diferentes para _cargo e _salario.
     O estagiário começa com salário fixo baixo, o pleno recebe o salário como
     parâmetro, e o gerente tem salário base alto + bônus configurável.

  c) Por que é melhor definir o cargo no construtor do que em métodos separados?
     Porque garante que o objeto já nasce em um estado válido e consistente.
     Se o cargo fosse definido depois, o objeto poderia existir temporariamente
     sem cargo — o que pode causar erros ou comportamentos inesperados.
*/
