import 'personagem.dart';

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 150, 10, 40, 20);
  Arqueiro lia     = Arqueiro('Lia', 100, 8, 30, 5);
  Mago merlin      = Mago('Merlin', 80, 12, 25, 50);
  Goblin gob       = Goblin('Gob', 60, 3, 50, 15);
  Dragao ignis     = Dragao('Ignis', 200, 20, 500, 70);

  print('======= STATUS INICIAL =======');
  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();

  print('======= BATALHA =======');
  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);

  print('\n======= STATUS FINAL =======');
  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();

  if (!gob.estaVivo()) gob.exibirRecompensa();
  if (!ignis.estaVivo()) ignis.exibirRecompensa();
}
