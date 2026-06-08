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

  @override
  String toString() {
    return 'VIP | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Adicional: R\$ ${valorAdicional.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

class IngressoPromocional extends Ingresso implements Calculavel {
  double desconto;

  IngressoPromocional(String evento, double valor, this.desconto)
      : super(evento, valor);

  @override
  double valorFinal() => valor - desconto;

  @override
  String toString() {
    return 'Promocional | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Desconto: R\$ ${desconto.toStringAsFixed(2)} | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}

class IngressoCamarote extends Ingresso implements Calculavel {
  double taxaServico;
  String localizacao;

  IngressoCamarote(String evento, double valor, this.taxaServico, this.localizacao)
      : super(evento, valor);

  @override
  double valorFinal() => valor + taxaServico;

  @override
  String toString() {
    return 'Camarote | Evento: $evento | Valor: R\$ ${valor.toStringAsFixed(2)} | Taxa: R\$ ${taxaServico.toStringAsFixed(2)} | Local: $localizacao | Total: R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}
