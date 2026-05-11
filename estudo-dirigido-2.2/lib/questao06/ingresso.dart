class Ingresso {
  String evento;
  double valor;

  Ingresso(this.evento, this.valor);
}

abstract class Calculavel {
  double valorFinal();
}

class IngressoVip extends Ingresso implements Calculavel {
  double valorAdicional;

  IngressoVip(String evento, double valor, this.valorAdicional)
      : super(evento, valor);

  @override
  double valorFinal() => valor + valorAdicional;

  void exibir() {
    print('Ingresso VIP');
    print('Evento:    $evento');
    print('Valor:     R\$ ${valor.toStringAsFixed(2)}');
    print('Adicional: R\$ ${valorAdicional.toStringAsFixed(2)}');
    print('Total:     R\$ ${valorFinal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() => valor - desconto;

  void exibir() {
    print('Ingresso Promocional');
    print('Evento:   $evento');
    print('Valor:    R\$ ${valor.toStringAsFixed(2)}');
    print('Desconto: R\$ ${desconto.toStringAsFixed(2)}');
    print('Total:    R\$ ${valorFinal().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
