import 'animal.dart';

void main() {
  Cachorro c = Cachorro('Rex');
  Gato g = Gato('Mimi');
  Passaro p = Passaro('Piu');

  c.emitirSom();
  g.emitirSom();
  p.emitirSom();
}
