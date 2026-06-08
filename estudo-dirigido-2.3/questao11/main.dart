import 'personagem.dart';
import 'lista_generica.dart';

void main() {
  Guerreiro thoran = Guerreiro('Thoran', 120, 5, 20, 15);
  Arqueiro lia     = Arqueiro('Lia', 80, 4, 15, 10);
  Mago merlin      = Mago('Merlin', 70, 6, 10, 50);
  Goblin gob       = Goblin('Gob', 40, 2, 100, 25);
  Dragao ignis     = Dragao('Ignis', 200, 10, 1000, 35);

  // Listas por tipo
  ListaGenerica<Atacavel> atacaveis   = ListaGenerica<Atacavel>();
  ListaGenerica<Magico> magicos       = ListaGenerica<Magico>();
  ListaGenerica<Flamejante> flamejantes = ListaGenerica<Flamejante>();
  ListaGenerica<Personagem> todos     = ListaGenerica<Personagem>();

  atacaveis.adicionar(thoran);
  atacaveis.adicionar(lia);
  atacaveis.adicionar(merlin);

  magicos.adicionar(merlin);
  flamejantes.adicionar(ignis);

  todos.adicionar(thoran);
  todos.adicionar(lia);
  todos.adicionar(merlin);
  todos.adicionar(gob);
  todos.adicionar(ignis);

  print('======= STATUS INICIAL =======');
  todos.imprimirItens();

  print('\n======= ATAQUES =======');
  for (var a in atacaveis.obterItens()) {
    a.atacar(gob);
  }

  print('\n======= MAGIAS =======');
  for (var m in magicos.obterItens()) {
    m.lancarMagia(ignis);
  }

  print('\n======= FOGO =======');
  for (var f in flamejantes.obterItens()) {
    f.soltarFogo(thoran);
  }

  print('\n======= STATUS FINAL =======');
  todos.imprimirItens();
}
