class Circulo {
  static const double pi = 3.14;

  double raio;
  String cor;

  Circulo(this.raio, this.cor) {
    if (raio <= 0) throw ArgumentError('O raio deve ser maior que 0.');
    if (cor.isEmpty) throw ArgumentError('A cor não pode ser vazia.');
  }

  double calcularArea() => pi * raio * raio;

  double calcularPerimetro() => 2 * pi * raio;

  void exibirResumo() {
    print('-------------------------');
    print('Raio:      $raio');
    print('Cor:       $cor');
    print('Área:      ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro().toStringAsFixed(2)}');
    print('-------------------------');
  }
}
