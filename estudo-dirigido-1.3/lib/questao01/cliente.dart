class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo) {
    if (_nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (_email.isEmpty) throw ArgumentError('O email não pode ser vazio.');
    if (_saldoCarteira < 0) throw ArgumentError('O saldo não pode ser negativo.');
  }

  // Getters
  String get nome => _nome;
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  // Setters
  set nome(String valor) {
    if (valor.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    _nome = valor;
  }

  set email(String valor) {
    if (valor.isEmpty) throw ArgumentError('O email não pode ser vazio.');
    _email = valor;
  }

  set saldoCarteira(double valor) {
    if (valor < 0) throw ArgumentError('O saldo não pode ser negativo.');
    _saldoCarteira = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Cliente $_nome ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Cliente $_nome desativado.');
  }

  void adicionarSaldo(double valor) {
    if (valor <= 0) {
      print('Valor inválido para adicionar.');
      return;
    }
    _saldoCarteira += valor;
    print('Saldo adicionado. Novo saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)}');
  }

  void debitarSaldo(double valor) {
    if (valor <= 0) {
      print('Valor inválido para debitar.');
      return;
    }
    if (valor > _saldoCarteira) {
      print('Saldo insuficiente.');
      return;
    }
    _saldoCarteira -= valor;
    print('Saldo debitado. Novo saldo: R\$ ${_saldoCarteira.toStringAsFixed(2)}');
  }

  void exibirCliente() {
    print('-------------------------');
    print('Nome:   $_nome');
    print('Email:  $_email');
    print('Saldo:  R\$ ${_saldoCarteira.toStringAsFixed(2)}');
    print('Ativo:  ${_ativo ? "Sim ✅" : "Não ❌"}');
    print('-------------------------');
  }
}
