import 'personagem.dart';

void main() {
  Personagem p1 = Personagem('Arthas', 100, 80);
  Personagem p2 = p1; // p2 aponta para o mesmo objeto que p1

  print('Antes da alteração:');
  p1.exibir();
  p2.exibir();

  p2.alterarVida(50); // altera o objeto via p2

  print('\nDepois da alteração:');
  p1.exibir(); // p1 também reflete a mudança!
  p2.exibir();
}
