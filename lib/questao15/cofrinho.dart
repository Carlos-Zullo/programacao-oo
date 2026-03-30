class Cofrinho {
  double saldo;
  int quantidadeDepositos;

  Cofrinho(this.saldo) : quantidadeDepositos = 0 {
    if (saldo < 0) throw ArgumentError('O saldo inicial deve ser maior ou igual a 0.');
  }

  void depositar(double valor) {
    if (valor <= 0) {
      print('O valor do depósito deve ser maior que 0.');
      return;
    }
    saldo += valor;
    quantidadeDepositos++;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado. Depósitos: $quantidadeDepositos');
  }

  void quebrar() {
    print('=========================');
    print('💰 Quebrando o cofrinho!');
    print('Total acumulado: R\$ ${saldo.toStringAsFixed(2)}');
    print('Total de depósitos: $quantidadeDepositos');
    saldo = 0;
    quantidadeDepositos = 0;
    print('Cofrinho zerado!');
    print('=========================');
  }

  void exibirSaldo() {
    print('-------------------------');
    print('Saldo atual:  R\$ ${saldo.toStringAsFixed(2)}');
    print('Depósitos:    $quantidadeDepositos');
    print('-------------------------');
  }
}
