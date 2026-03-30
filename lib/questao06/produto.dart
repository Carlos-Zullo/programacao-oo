class Produto {
  int codigo;
  String nome;
  double precoUnitario;
  int quantidade;
 
  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade) {
    if (codigo <= 0) throw ArgumentError('O código deve ser maior que 0.');
    if (nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (precoUnitario <= 0) throw ArgumentError('O preço deve ser maior que 0.');
    if (quantidade <= 0) throw ArgumentError('A quantidade deve ser maior que 0.');
  }
 
  double calcularDesconto() {
    double percentual = 0;
    if (quantidade >= 20) {
      percentual = 0.15;
    } else if (quantidade >= 10) {
      percentual = 0.10;
    } else if (quantidade >= 5) {
      percentual = 0.05;
    }
    return precoUnitario * quantidade * percentual;
  }
 
  double calcularTotal() {
    return (precoUnitario * quantidade) - calcularDesconto();
  }
 
  void exibirResumo() {
    print('-------------------------');
    print('Código:        $codigo');
    print('Nome:          $nome');
    print('Preço unit.:   R\$ ${precoUnitario.toStringAsFixed(2)}');
    print('Quantidade:    $quantidade');
    print('Desconto:      R\$ ${calcularDesconto().toStringAsFixed(2)}');
    print('Total:         R\$ ${calcularTotal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
