class Quadrado {
  double lado;
  String caractere;
 
  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) throw ArgumentError('O lado deve ser maior que 0.');
    if (caractere.isEmpty) throw ArgumentError('O caractere não pode ser vazio.');
    if (caractere.length > 1) throw ArgumentError('O caractere deve ter apenas 1 símbolo.');
  }
 
  double calcularArea() => lado * lado;
 
  double calcularPerimetro() => 4 * lado;
 
  void desenhar() {
    int tamanho = lado.toInt();
    for (int i = 0; i < tamanho; i++) {
      print((caractere * tamanho));
    }
  }
 
  void exibirResumo() {
    print('-------------------------');
    print('Lado:      $lado');
    print('Área:      ${calcularArea()}');
    print('Perímetro: ${calcularPerimetro()}');
    print('-------------------------');
  }
 
  bool ehIgual(Quadrado outro) => lado == outro.lado;
}
