import 'pokemon.dart';

void main() {
  Pokemon pk1 = Pokemon(6, 'Charizard', 'Fogo', 75, 266);
  Pokemon pk2 = Pokemon(25, 'Pikachu', 'Elétrico', 50, 190);
  Pokemon pk3 = Pokemon(130, 'Gyarados', 'Água', 60, 261);

  Treinador t = Treinador('Ash', pk1, pk2, pk3);

  t.exibirTime();
}
