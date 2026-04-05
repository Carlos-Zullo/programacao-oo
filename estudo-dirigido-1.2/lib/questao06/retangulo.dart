class Retangulo {
  double _largura;
  double _altura;

  // Construtor padrão com parâmetros
  Retangulo(this._largura, this._altura);

  // Construtor sem parâmetros — cria quadrado 1x1
  Retangulo.unitario()
      : _largura = 1,
        _altura = 1;

  // Construtor nomeado para quadrado
  Retangulo.quadrado(double lado)
      : _largura = lado,
        _altura = lado;

  double calcularArea() => _largura * _altura;

  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print('-------------------------');
    print('Largura:   $_largura');
    print('Altura:    $_altura');
    print('Área:      ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
    print('-------------------------');
  }
}
