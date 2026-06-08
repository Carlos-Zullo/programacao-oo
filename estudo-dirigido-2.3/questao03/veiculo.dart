abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);
}

abstract class Fichavel {
  void exibirFicha();
}

class Carro extends Veiculo implements Fichavel {
  int quantidadePortas;

  Carro(String marca, String modelo, int ano, this.quantidadePortas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Carro | $marca $modelo | Ano: $ano | Portas: $quantidadePortas');
  }

  @override
  String toString() {
    return 'Carro | $marca $modelo | Ano: $ano | Portas: $quantidadePortas';
  }
}

class Moto extends Veiculo implements Fichavel {
  int cilindradas;

  Moto(String marca, String modelo, int ano, this.cilindradas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Moto | $marca $modelo | Ano: $ano | Cilindradas: $cilindradas cc');
  }

  @override
  String toString() {
    return 'Moto | $marca $modelo | Ano: $ano | Cilindradas: $cilindradas cc';
  }
}

class Caminhao extends Veiculo implements Fichavel {
  double capacidadeCarga;

  Caminhao(String marca, String modelo, int ano, this.capacidadeCarga)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print('Caminhão | $marca $modelo | Ano: $ano | Carga: $capacidadeCarga t');
  }

  @override
  String toString() {
    return 'Caminhão | $marca $modelo | Ano: $ano | Carga: $capacidadeCarga t';
  }
}
