class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
    print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado por gerente.');
  }

  void sacar(double valor) {
    if (valor > _saldo) {
      print('Saldo insuficiente.');
      return;
    }
    _saldo -= valor;
    print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado por gerente.');
  }

  void exibir() {
    print('  Titular: $_titular');
    print('  Saldo:   R\$ ${_saldo.toStringAsFixed(2)}');
  }
}

class Gerente {
  String _nome;

  Gerente(this._nome);

  void depositar(Conta conta, double valor) {
    print('$_nome realizando depósito...');
    conta.depositar(valor);
  }

  void sacar(Conta conta, double valor) {
    print('$_nome realizando saque...');
    conta.sacar(valor);
  }
}

/*
  RESPOSTAS:

  a) Por que os dois gerentes conseguem alterar o mesmo saldo?
     Porque ambos recebem uma referência para o MESMO objeto Conta.
     Qualquer operação feita por qualquer gerente modifica o mesmo objeto.

  b) Cada gerente possui uma conta própria ou operam sobre a mesma instância?
     Operam sobre a mesma instância. Os gerentes não têm conta própria —
     apenas recebem a referência como parâmetro nos métodos.

  c) O que isso mostra sobre compartilhamento de referência?
     Que múltiplos objetos podem operar sobre o mesmo objeto compartilhado.
     Isso é poderoso, mas exige cuidado para evitar alterações indesejadas.
*/
