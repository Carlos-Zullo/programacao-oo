import 'triangulo.dart';

void main() {
  Triangulo t1 = Triangulo(3, 4, 5, '*');
  Triangulo t2 = Triangulo(5, 5, 5, '#');

  print('=== Triângulo 1 ===');
  t1.exibirResumo();
  print('Esquerda:');
  t1.desenharEsquerda();
  print('Centralizado:');
  t1.desenharCentralizado();

  print('=== Triângulo 2 ===');
  t2.exibirResumo();
  print('Esquerda:');
  t2.desenharEsquerda();
  print('Centralizado:');
  t2.desenharCentralizado();
}
