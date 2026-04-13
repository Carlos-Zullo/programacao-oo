import '../questao01/cliente.dart';

class ListaCliente {
  final List<Cliente> _clientes = [];

  void inserir(Cliente cliente) {
    _clientes.add(cliente);
    print('Cliente ${cliente.nome} inserido.');
  }

  void remover(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Índice inválido para remover.');
      return;
    }
    print('Cliente ${_clientes[i].nome} removido.');
    _clientes.removeAt(i);
  }

  int tamanho() => _clientes.length;

  Cliente? get(int i) {
    if (i < 0 || i >= _clientes.length) {
      print('Índice inválido.');
      return null;
    }
    return _clientes[i];
  }

  void exibirLista() {
    if (_clientes.isEmpty) {
      print('Lista vazia.');
      return;
    }
    for (var c in _clientes) {
      c.exibirCliente();
    }
  }
}
