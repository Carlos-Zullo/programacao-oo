abstract class Rentavel {
  void aplicarRendimento();
}

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    if (valor <= 0) { print('Valor inválido.'); return; }
    saldo += valor;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.');
  }

  void sacar(double valor) {
    if (valor <= 0) { print('Valor inválido.'); return; }
    if (valor > saldo) { print('Saldo insuficiente.'); return; }
    saldo -= valor;
    print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado.');
  }

  void exibirSaldo() {
    print('-------------------------');
    print('Titular: $titular');
    print('Saldo:   R\$ ${saldo.toStringAsFixed(2)}');
    print('-------------------------');
  }
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.01;

  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento de 1% aplicado. Novo saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
  double taxaRendimento = 0.05;

  ContaCorrente(String titular, double saldo) : super(titular, saldo);

  @override
  void aplicarRendimento() {
    saldo += saldo * taxaRendimento;
    print('Rendimento de 5% aplicado. Novo saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}