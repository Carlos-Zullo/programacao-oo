import 'quadrado.dart';

void main() {
  Quadrado q1 = Quadrado(3, '*');
  Quadrado q2 = Quadrado(5, '#');
  Quadrado q3 = Quadrado(3, '@'); // igual ao q1 em tamanho
  Quadrado q4 = Quadrado(5, '+'); // igual ao q2 em tamanho

  print('=== Quadrado 1 ===');
  q1.exibirResumo();
  q1.desenhar();

  print('=== Quadrado 2 ===');
  q2.exibirResumo();
  q2.desenhar();

  print('=== Quadrado 3 ===');
  q3.exibirResumo();
  q3.desenhar();

  print('=== Quadrado 4 ===');
  q4.exibirResumo();
  q4.desenhar();

  print('Q1 e Q2 são iguais? ${q1.ehIgual(q2)}');
  print('Q1 e Q3 são iguais? ${q1.ehIgual(q3)}');
  print('Q2 e Q4 são iguais? ${q2.ehIgual(q4)}');
}
