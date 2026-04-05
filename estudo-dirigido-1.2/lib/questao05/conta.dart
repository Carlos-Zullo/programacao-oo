class Conta {
  String _numero;
  String _titular;
  double _saldo;

  Conta.bancaria(this._numero, this._titular) : _saldo = 0;

  Conta.vip(this._numero, this._titular, double saldoInicial)
      : _saldo = saldoInicial;

  void depositar(double valor) {
    if (valor <= 0) {
      print('Valor de depósito inválido.');
      return;
    }
    _saldo += valor;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.');
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print('Valor de saque inválido.');
      return;
    }
    if (valor > _saldo) {
      print('Saldo insuficiente. Saldo atual: R\$ ${_saldo.toStringAsFixed(2)}');
      return;
    }
    _saldo -= valor;
    print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado.');
  }

  void exibirResumo() {
    print('-------------------------');
    print('Número:  $_numero');
    print('Titular: $_titular');
    print('Saldo:   R\$ ${_saldo.toStringAsFixed(2)}');
    print('-------------------------');
  }
}
