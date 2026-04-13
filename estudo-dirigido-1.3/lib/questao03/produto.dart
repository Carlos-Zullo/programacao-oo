class Produto {
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  Produto(this._nome, this._preco, this._estoque, this._ativo) {
    if (_nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (_preco < 0) throw ArgumentError('O preço não pode ser negativo.');
    if (_estoque < 0) throw ArgumentError('O estoque não pode ser negativo.');
  }

  // Getters
  String get nome => _nome;
  double get preco => _preco;
  int get estoque => _estoque;
  bool get ativo => _ativo;

  // Setters
  set nome(String valor) {
    if (valor.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    _nome = valor;
  }

  set preco(double valor) {
    if (valor < 0) throw ArgumentError('O preço não pode ser negativo.');
    _preco = valor;
  }

  set estoque(int valor) {
    if (valor < 0) throw ArgumentError('O estoque não pode ser negativo.');
    _estoque = valor;
  }

  set ativo(bool valor) => _ativo = valor;

  void ativar() {
    _ativo = true;
    print('Produto $_nome ativado.');
  }

  void desativar() {
    _ativo = false;
    print('Produto $_nome desativado.');
  }

  void reporEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Quantidade inválida para repor.');
      return;
    }
    _estoque += quantidade;
    print('Estoque reposto. Novo estoque: $_estoque');
  }

  void retirarEstoque(int quantidade) {
    if (quantidade <= 0) {
      print('Quantidade inválida para retirar.');
      return;
    }
    if (quantidade > _estoque) {
      print('Estoque insuficiente. Estoque atual: $_estoque');
      return;
    }
    _estoque -= quantidade;
    print('Estoque retirado. Novo estoque: $_estoque');
  }

  void exibirProduto() {
    print('-------------------------');
    print('Nome:    $_nome');
    print('Preço:   R\$ ${_preco.toStringAsFixed(2)}');
    print('Estoque: $_estoque');
    print('Ativo:   ${_ativo ? "Sim ✅" : "Não ❌"}');
    print('-------------------------');
  }
}
