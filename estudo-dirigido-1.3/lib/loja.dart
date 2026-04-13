import '../questao01/cliente.dart';
import '../questao02/lista_cliente.dart';
import '../questao03/produto.dart';
import '../questao04/lista_produto.dart';
import '../questao09/pedido.dart';

class Loja {
  String _nome;
  ListaCliente _clientes;
  ListaProduto _produtos;
  List<Pedido> _pedidos;

  Loja(this._nome)
      : _clientes = ListaCliente(),
        _produtos = ListaProduto(),
        _pedidos = [] {
    if (_nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
  }

  // Getters
  String get nome => _nome;
  ListaCliente get clientes => _clientes;
  ListaProduto get produtos => _produtos;
  List<Pedido> get pedidos => _pedidos;

  // Setter
  set nome(String valor) {
    if (valor.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    _nome = valor;
  }

  void cadastrarCliente(Cliente cliente) {
    _clientes.inserir(cliente);
  }

  void cadastrarProduto(Produto produto) {
    _produtos.inserir(produto);
  }

  void registrarPedido(Pedido pedido) {
    _pedidos.add(pedido);
    print('Pedido ${pedido.numero} registrado na loja.');
  }

  void exibirResumoLoja() {
    print('=========================');
    print('🏪 Loja: $_nome');
    print('Clientes cadastrados: ${_clientes.tamanho()}');
    print('Produtos cadastrados: ${_produtos.tamanho()}');
    print('Pedidos registrados:  ${_pedidos.length}');
    print('\n--- Clientes ---');
    _clientes.exibirLista();
    print('\n--- Produtos ---');
    _produtos.exibirLista();
    print('\n--- Pedidos ---');
    for (var p in _pedidos) {
      p.exibirResumoPedido();
    }
    print('=========================');
  }
}
