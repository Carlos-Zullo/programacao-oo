class CupomDesconto {
  String _codigo;
  double _percentual;
  bool _ativo;

  CupomDesconto(this._codigo, this._percentual, this._ativo) {
    if (_codigo.isEmpty) throw ArgumentError('O código não pode ser vazio.');
    if (_percentual < 0 || _percentual > 100) {
      throw ArgumentError('O percentual deve estar entre 0 e 100.');
    }
  }

  // Getters
  String get codigo => _codigo;
  double get percentual => _percentual;
  bool get ativo => _ativo;

  // Setters
  set codigo(String valor) {
    if (valor.isEmpty) throw ArgumentError('O código não pode ser vazio.');
    _codigo = valor;
  }

  set percentual(double valor) {
    if (valor < 0 || valor > 100) {
      throw ArgumentError('O percentual deve estar entre 0 e 100.');
    }
    _percentual = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Cupom $_codigo ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Cupom $_codigo desativado.');
  }

  double calcularDesconto(double valor) {
    if (!_ativo) {
      print('Cupom inativo. Nenhum desconto aplicado.');
      return 0;
    }
    return valor * (_percentual / 100);
  }

  void exibirCupom() {
    print('-------------------------');
    print('Código:     $_codigo');
    print('Percentual: $_percentual%');
    print('Ativo:      ${_ativo ? "Sim ✅" : "Não ❌"}');
    print('-------------------------');
  }
}
