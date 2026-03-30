class Lampada {
  bool ligada;
  int quantidadeLigacoes;
  bool queimada;

  Lampada()
      : ligada = false,
        quantidadeLigacoes = 0,
        queimada = false;

  void ligar() {
    if (queimada) {
      print('A lâmpada está queimada e não pode ser ligada.');
      return;
    }
    if (ligada) {
      print('A lâmpada já está ligada.');
      return;
    }
    ligada = true;
    quantidadeLigacoes++;
    print('Lâmpada ligada. (Ligações: $quantidadeLigacoes)');

    if (quantidadeLigacoes >= 5) {
      queimada = true;
      ligada = false;
      print('A lâmpada queimou após $quantidadeLigacoes ligações!');
    }
  }

  void desligar() {
    if (!ligada) {
      print('A lâmpada já está desligada.');
      return;
    }
    ligada = false;
    print('Lâmpada desligada.');
  }

  void exibirEstado() {
    print('-------------------------');
    if (queimada) {
      print('Estado: 💀 Queimada');
    } else if (ligada) {
      print('Estado: 💡 Ligada');
    } else {
      print('Estado: 🔌 Desligada');
    }
    print('Quantidade de ligações: $quantidadeLigacoes');
    print('-------------------------');
  }
}
