class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);
}

abstract class Rentavel {
  void aplicarRendimento();
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }

  @override
  String toString() {
    return 'Poupança | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }

  @override
  String toString() {
    return 'Corrente | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}

class ContaInvestimento extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.08;

  ContaInvestimento(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
  }

  @override
  String toString() {
    return 'Investimento | Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)}';
  }
}
