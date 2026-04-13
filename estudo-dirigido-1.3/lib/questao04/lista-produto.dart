import '../questao03/produto.dart';

class ListaProduto {
  final List<Produto> _produtos = [];

  void inserir(Produto produto) {
    _produtos.add(produto);
    print('Produto ${produto.nome} inserido.');
  }

  void remover(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Índice inválido para remover.');
      return;
    }
    print('Produto ${_produtos[i].nome} removido.');
    _produtos.removeAt(i);
  }

  int tamanho() => _produtos.length;

  Produto? get(int i) {
    if (i < 0 || i >= _produtos.length) {
      print('Índice inválido.');
      return null;
    }
    return _produtos[i];
  }

  void exibirLista() {
    if (_produtos.isEmpty) {
      print('Lista vazia.');
      return;
    }
    for (var p in _produtos) {
      p.exibirProduto();
    }
  }
}
