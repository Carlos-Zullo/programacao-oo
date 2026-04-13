import '../questao07/carrinho.dart';
import '../questao08/cupom_desconto.dart';

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto;
  double _totalFinal;
  String _status;

  Pedido(this._numero, this._carrinho, [this._cupom])
      : _totalBruto = 0,
        _totalFinal = 0,
        _status = 'aberto' {
    if (_numero.isEmpty) throw ArgumentError('O número não pode ser vazio.');
  }

  // Getters
  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  // Setters
  set numero(String valor) {
    if (valor.isEmpty) throw ArgumentError('O número não pode ser vazio.');
    _numero = valor;
  }

  set cupom(CupomDesconto? valor) => _cupom = valor;

  set status(String valor) {
    if (!['aberto', 'fechado', 'cancelado'].contains(valor)) {
      throw ArgumentError('Status inválido.');
    }
    _status = valor;
  }

  void fecharPedido() {
    if (_status != 'aberto') {
      print('Pedido não pode ser fechado. Status atual: $_status');
      return;
    }
    _totalBruto = _carrinho.calcularTotal();
    if (_cupom != null && _cupom!.ativo) {
      double desconto = _cupom!.calcularDesconto(_totalBruto);
      _totalFinal = _totalBruto - desconto;
    } else {
      _totalFinal = _totalBruto;
    }
    _status = 'fechado';
    print('Pedido $_numero fechado com sucesso!');
  }

  void cancelarPedido() {
    if (_status == 'cancelado') {
      print('Pedido já está cancelado.');
      return;
    }
    _status = 'cancelado';
    print('Pedido $_numero cancelado.');
  }

  void exibirResumoPedido() {
    print('=========================');
    print('📦 Pedido: $_numero');
    print('Cliente:  ${_carrinho.cliente.nome}');
    print('Status:   $_status');
    print('Itens:');
    _carrinho.itens.exibirLista();
    print('Total Bruto:  R\$ ${_totalBruto.toStringAsFixed(2)}');
    if (_cupom != null) {
      print('Cupom:        ${_cupom!.codigo} (${_cupom!.percentual}%)');
    }
    print('Total Final:  R\$ ${_totalFinal.toStringAsFixed(2)}');
    print('=========================');
  }
}
