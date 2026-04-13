import '../questao01/cliente.dart';
import '../questao05/item_carrinho.dart';
import '../questao06/lista_carrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente)
      : _itens = ListaCarrinho(),
        _aberto = true;

  // Getters
  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  // Setters
  set cliente(Cliente valor) => _cliente = valor;
  set aberto(bool valor) => _aberto = valor;

  void adicionarItem(ItemCarrinho item) {
    if (!_aberto) {
      print('Carrinho fechado. Não é possível adicionar itens.');
      return;
    }
    _itens.inserir(item);
  }

  void removerItem(int i) {
    if (!_aberto) {
      print('Carrinho fechado. Não é possível remover itens.');
      return;
    }
    _itens.remover(i);
  }

  double calcularTotal() {
    double total = 0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      total += _itens.get(i)!.calcularSubtotal();
    }
    return total;
  }

  void exibirCarrinho() {
    print('=========================');
    print('🛒 Carrinho de: ${_cliente.nome}');
    print('Status: ${_aberto ? "Aberto" : "Fechado"}');
    print('Itens:');
    _itens.exibirLista();
    print('Total: R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('=========================');
  }
}
