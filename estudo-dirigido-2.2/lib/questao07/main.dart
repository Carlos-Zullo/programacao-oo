import 'animal.dart';

void main() {
  Cachorro c = Cachorro('Rex');
  Gato g = Gato('Mimi');
  Passaro p = Passaro('Piu');
  Vaca v = Vaca('Mimosa');

  c.emitirSom();
  g.emitirSom();
  p.emitirSom();
  v.emitirSom();
}
