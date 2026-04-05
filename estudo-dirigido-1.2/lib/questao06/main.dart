import 'retangulo.dart';

void main() {
  Retangulo r1 = Retangulo(5, 3);
  Retangulo r2 = Retangulo.unitario();
  Retangulo r3 = Retangulo.quadrado(4);

  print('=== Retângulo padrão ===');
  r1.exibirDados();

  print('=== Retângulo 1x1 ===');
  r2.exibirDados();

  print('=== Quadrado lado 4 ===');
  r3.exibirDados();
}
