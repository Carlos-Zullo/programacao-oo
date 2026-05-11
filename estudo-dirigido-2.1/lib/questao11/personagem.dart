class Personagem {
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

  void exibirStatus() {
    print('-------------------------');
    print('Nome:  $nome');
    print('Vida:  $vida');
    print('Nível: $nivel');
    print('Vivo:  ${estaVivo() ? "Sim ✅" : "Não ❌"}');
  }
}

class Combatente extends Personagem {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
      : super(nome, vida, nivel);

  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto e não pode atacar.'); return; }
    print('$nome ataca ${alvo.nome} com força $forca!');
    alvo.receberDano(forca);
  }
}

class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  void ataquePesado(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto e não pode atacar.'); return; }
    int dano = forca * 2;
    print('$nome usa ATAQUE PESADO em ${alvo.nome}! Dano: $dano');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Força:    $forca');
    print('Armadura: $armadura');
    print('-------------------------');
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
    super.exibirStatus();
    print('Força:   $forca');
    print('Flechas: $flechas');
    print('-------------------------');
  }
}

class Mago extends Combatente {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  void lancarMagia(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    if (mana < 10) { print('$nome não tem mana suficiente!'); return; }
    int dano = forca + 15;
    mana -= 10;
    print('$nome lança MAGIA em ${alvo.nome}! Dano: $dano | Mana: $mana');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Força: $forca');
    print('Mana:  $mana');
    print('-------------------------');
  }
}

class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);

  void exibirRecompensa() {
    print('$nome foi derrotado! Recompensa: $recompensa XP 🏆');
  }
}

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Velocidade: $velocidade');
    print('-------------------------');
  }
}

class Dragao extends Inimigo {
  int poderFogo;

  Dragao(String nome, int vida, int nivel, int recompensa, this.poderFogo)
      : super(nome, vida, nivel, recompensa);

  void soltarFogo(Personagem alvo) {
    print('$nome solta FOGO em ${alvo.nome}! Dano: $poderFogo 🔥');
    alvo.receberDano(poderFogo);
  }

  @override
  void exibirStatus() {
    super.exibirStatus();
    print('Poder de Fogo: $poderFogo');
    print('-------------------------');
  }
}
