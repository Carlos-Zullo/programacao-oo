class Carteira {
  double _saldo;

  Carteira(this._saldo);

  void adicionar(double valor) => _saldo += valor;

  void exibir() {
    print('  Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }
}

class Pessoa {
  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira);

  Carteira get carteira => _carteira;

  void exibir() {
    print('  Pessoa: $_nome');
    _carteira.exibir();
  }
}

/*
  RESPOSTAS:

  a) Por que a alteração feita por p2 apareceu quando acessado por p1?
     Porque p1 e p2 são referências para o MESMO objeto Pessoa na memória.
     Qualquer alteração feita via p2 afeta o mesmo objeto que p1 aponta.

  b) p1 e p2 armazenam o objeto inteiro ou uma referência?
     Uma referência. As variáveis ficam na stack e apontam para o objeto
     que está na heap. Elas não guardam o objeto em si.

  c) Onde ficam variáveis locais e objetos criados dinamicamente?
     Variáveis locais (como p1, p2) ficam na STACK.
     Os objetos criados com "new" ou construtores ficam na HEAP.

  d) Quando os objetos ficam elegíveis para o garbage collector?
     Quando não há mais nenhuma referência apontando para eles.
     Após "p1 = null" e "p2 = null", o objeto Pessoa não tem mais
     referências — o garbage collector pode liberá-lo da memória.
     O mesmo vale para a Carteira, se ninguém mais a referenciar.
*/
