abstract interface class Atacavel {
  void atacar(Personagem alvo);
}

abstract interface class Magico {
  void lancarMagia(Personagem alvo);
}

abstract interface class Flamejante {
  void soltarFogo(Personagem alvo);
}

abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem(this.nome, this.vida, this.nivel) {
    if (nome.isEmpty) throw ArgumentError('Nome não pode ser vazio.');
    if (vida < 0) throw ArgumentError('Vida não pode ser negativa.');
    if (nivel < 1) throw ArgumentError('Nível deve ser >= 1.');
  }

  bool estaVivo() => vida > 0;

  void receberDano(int dano) {
    vida -= dano;
    if (vida < 0) vida = 0;
    print('$nome recebeu $dano de dano! Vida restante: $vida');
  }

  void exibirStatus(); // abstrato
}

abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
      : super(nome, vida, nivel);
}

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto e não pode atacar.'); return; }
    print('$nome ataca ${alvo.nome} com força $forca!');
    alvo.receberDano(forca);
  }

  void ataquePesado(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    int dano = forca * 2;
    print('$nome usa ATAQUE PESADO em ${alvo.nome}! Dano: $dano ⚔️');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('-------------------------');
    print('⚔️  Guerreiro: $nome');
    print('Vida:     $vida | Nível: $nivel');
    print('Força:    $forca | Armadura: $armadura');
    print('Vivo:     ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto e não pode atacar.'); return; }
    if (flechas <= 0) { print('$nome não tem flechas!'); return; }
    flechas--;
    print('$nome atira uma flecha em ${alvo.nome}! Flechas: $flechas');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print('-------------------------');
    print('🏹 Arqueiro: $nome');
    print('Vida:    $vida | Nível: $nivel');
    print('Força:   $forca | Flechas: $flechas');
    print('Vivo:    ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}

class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    print('$nome ataca ${alvo.nome} com força $forca!');
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    if (mana < 10) { print('$nome não tem mana suficiente!'); return; }
    int dano = forca + 15;
    mana -= 10;
    print('$nome lança MAGIA em ${alvo.nome}! Dano: $dano ✨ | Mana: $mana');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('-------------------------');
    print('🧙 Mago: $nome');
    print('Vida:  $vida | Nível: $nivel');
    print('Força: $forca | Mana: $mana');
    print('Vivo:  ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}

abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa(); // abstrato
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirRecompensa() {
    print('$nome foi derrotado! Recompensa: $recompensa XP 🏆');
  }

  @override
  void exibirStatus() {
    print('-------------------------');
    print('👺 Goblin: $nome');
    print('Vida:       $vida | Nível: $nivel');
    print('Velocidade: $velocidade');
    print('Vivo:       ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}

class Dragao extends Inimigo implements Flamejante {
  int poderFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  @override
  void soltarFogo(Personagem alvo) {
    print('$nome solta FOGO em ${alvo.nome}! Dano: $poderFogo 🔥');
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirRecompensa() {
    print('$nome foi derrotado! Recompensa: $recompensa XP 🏆');
  }

  @override
  void exibirStatus() {
    print('-------------------------');
    print('🐉 Dragão: $nome');
    print('Vida:          $vida | Nível: $nivel');
    print('Poder de Fogo: $poderFogo');
    print('Vivo:          ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}
