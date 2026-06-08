import 'animal.dart';
import 'lista_generica.dart';

void main() {
  ListaGenerica<Sonoro> animais = ListaGenerica<Sonoro>();

  animais.adicionar(Cachorro('Rex'));
  animais.adicionar(Gato('Mimi'));
  animais.adicionar(Passaro('Piu'));
  animais.adicionar(Vaca('Mimosa'));
  animais.adicionar(Ovelha('Dolly'));

  print('=== Impressão da lista ===');
  animais.imprimirItens();

  print('\n=== Sons dos animais ===');
  for (var a in animais.obterItens()) {
    a.emitirSom();
  }
}
