class Contador {
  int valor;

  Contador(this.valor) {
    if (valor < 0) {
      throw ArgumentError('O valor inicial deve ser maior ou igual a 0.');
    }
  }

  void incrementar() {
    valor++;
    print('Incrementado. Valor atual: $valor');
  }

  void decrementar() {
    if (valor == 0) {
      print('O valor já é 0, não pode ficar negativo.');
      return;
    }
    valor--;
    print('Decrementado. Valor atual: $valor');
  }

  void zerar() {
    valor = 0;
    print('Contador zerado.');
  }

  void exibirValor() {
    print('-------------------------');
    print('Valor atual: $valor');
    print('-------------------------');
  }
}
