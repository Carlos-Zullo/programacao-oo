class Personagem {
  String nome;
  int vida;
  int ataque;

  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) throw ArgumentError('O nome não pode ser vazio.');
    if (vida <= 0) throw ArgumentError('A vida deve ser maior que 0.');
    if (ataque <= 0) throw ArgumentError('O ataque deve ser maior que 0.');
  }

  bool estaVivo() => vida > 0;

  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print('$nome está morto e não pode atacar!');
      return;
    }
    inimigo.vida -= ataque;
    if (inimigo.vida < 0) inimigo.vida = 0;
    print('$nome atacou ${inimigo.nome} causando $ataque de dano! Vida de ${inimigo.nome}: ${inimigo.vida}');
  }

  void exibirStatus() {
    print('-------------------------');
    print('Nome:   $nome');
    print('Vida:   $vida');
    print('Ataque: $ataque');
    print('Status: ${estaVivo() ? "Vivo ✅" : "Morto ❌"}');
    print('-------------------------');
  }
}
