class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('-------------------------');
    print('Evento: $evento');
    print('Valor:  R\$ ${valor.toStringAsFixed(2)}');
    print('-------------------------');
  }
}

class IngressoVip extends Ingresso {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  double valorFinal() => valor + valorAdicional;

  @override
  void exibirResumo() {
    super.exibirResumo();
    print('Adicional: R\$ ${valorAdicional.toStringAsFixed(2)}');
    print('Total:     R\$ ${valorFinal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
