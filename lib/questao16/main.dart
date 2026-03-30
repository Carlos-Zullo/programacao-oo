import 'personagem.dart';

void main() {
  Personagem p1 = Personagem('Guerreiro', 100, 25);
  Personagem p2 = Personagem('Mago', 70, 40);

  print('=== Status Inicial ===');
  p1.exibirStatus();
  p2.exibirStatus();

  print('=== Combate ===');
  while (p1.estaVivo() && p2.estaVivo()) {
    p1.atacar(p2);
    if (p2.estaVivo()) p2.atacar(p1);
  }

  print('=== Status Final ===');
  p1.exibirStatus();
  p2.exibirStatus();

  if (p1.estaVivo()) {
    print('🏆 Vencedor: ${p1.nome}!');
  } else {
    print('🏆 Vencedor: ${p2.nome}!');
  }
}
