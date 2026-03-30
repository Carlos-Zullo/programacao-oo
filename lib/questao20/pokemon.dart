class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hp;

  Pokemon(this.numero, this.nome, this.tipo, this.nivel, this.hp) {
    if (nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (tipo.isEmpty) throw ArgumentError('O tipo não pode ser vazio.');
    if (nivel < 1 || nivel > 100) throw ArgumentError('O nível deve estar entre 1 e 100.');
    if (hp <= 0) throw ArgumentError('O HP deve ser maior que 0.');
  }

  void exibir() {
    print('  #${numero.toString().padLeft(3, '0')} $nome | Tipo: $tipo | Nível: $nivel | HP: $hp');
  }
}

class Treinador {
  String nome;
  Pokemon pokemon1;
  Pokemon pokemon2;
  Pokemon pokemon3;

  Treinador(this.nome, this.pokemon1, this.pokemon2, this.pokemon3) {
    if (nome.isEmpty) throw ArgumentError('O nome do treinador não pode ser vazio.');
  }

  int calcularPoderTotal() {
    return pokemon1.nivel + pokemon2.nivel + pokemon3.nivel;
  }

  Pokemon pokemonMaisForte() {
    Pokemon mais = pokemon1;
    if (pokemon2.nivel > mais.nivel) mais = pokemon2;
    if (pokemon3.nivel > mais.nivel) mais = pokemon3;
    return mais;
  }

  void exibirTime() {
    print('=========================');
    print('🎮 Treinador: $nome');
    print('Time:');
    pokemon1.exibir();
    pokemon2.exibir();
    pokemon3.exibir();
    print('Poder total: ${calcularPoderTotal()}');
    print('Mais forte:  ${pokemonMaisForte().nome} (Nível ${pokemonMaisForte().nivel})');
    print('=========================');
  }
}
