import 'dart:math';

class Triangulo {
  double lado1;
  double lado2;
  double lado3;
  String caractere;

  Triangulo(this.lado1, this.lado2, this.lado3, this.caractere) {
    if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
      throw ArgumentError('Todos os lados devem ser maiores que 0.');
    }
    if (!_ehValido()) {
      throw ArgumentError('Os lados não formam um triângulo válido.');
    }
    if (caractere.isEmpty || caractere.length > 1) {
      throw ArgumentError('O caractere deve ter apenas 1 símbolo.');
    }
  }

  bool _ehValido() {
    return (lado1 + lado2 > lado3) &&
           (lado1 + lado3 > lado2) &&
           (lado2 + lado3 > lado1);
  }

  double calcularPerimetro() => lado1 + lado2 + lado3;

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - lado1) * (s - lado2) * (s - lado3));
  }

  void desenharEsquerda() {
    int linhas = lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      print(caractere * i);
    }
  }

  void desenharCentralizado() {
    int linhas = lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      int espacos = linhas - i;
      print((' ' * espacos) + (caractere * (2 * i - 1)));
    }
  }

  void exibirResumo() {
    print('-------------------------');
    print('Lado 1:    $lado1');
    print('Lado 2:    $lado2');
    print('Lado 3:    $lado3');
    print('Área:      ${calcularArea().toStringAsFixed(2)}');
    print('Perímetro: ${calcularPerimetro()}');
    print('-------------------------');
  }

  void setLado1(double valor) {
    if (valor <= 0) throw ArgumentError('O lado deve ser maior que 0.');
    lado1 = valor;
  }

  void setLado2(double valor) {
    if (valor <= 0) throw ArgumentError('O lado deve ser maior que 0.');
    lado2 = valor;
  }

  void setLado3(double valor) {
    if (valor <= 0) throw ArgumentError('O lado deve ser maior que 0.');
    lado3 = valor;
  }
}
