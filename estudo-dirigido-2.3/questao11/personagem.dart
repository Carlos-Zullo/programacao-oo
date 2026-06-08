// ─── Interfaces ───────────────────────────────────────────────────
abstract interface class Atacavel {
  void atacar(Personagem alvo);
}

abstract interface class Magico {
  void lancarMagia(Personagem alvo);
}

abstract interface class Flamejante {
  void soltarFogo(Personagem alvo);
}

// ─── Classe abstrata Personagem ───────────────────────────────────
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

  void exibirStatus();
}

// ─── Classe abstrata Combatente ───────────────────────────────────
abstract class Combatente extends Personagem implements Atacavel {
  int forca;

  Combatente(String nome, int vida, int nivel, this.forca)
      : super(nome, vida, nivel);
}

// ─── Guerreiro ────────────────────────────────────────────────────
class Guerreiro extends Combatente {
  int armadura;

  Guerreiro(String nome, int vida, int nivel, int forca, this.armadura)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    print('$nome ataca ${alvo.nome}! Dano: $forca');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print('⚔️  Guerreiro: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Armadura: $armadura');
  }

  @override
  String toString() {
    return 'Guerreiro | $nome | Vida: $vida | Nível: $nivel | Força: $forca | Armadura: $armadura';
  }
}

// ─── Arqueiro ─────────────────────────────────────────────────────
class Arqueiro extends Combatente {
  int flechas;

  Arqueiro(String nome, int vida, int nivel, int forca, this.flechas)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    if (flechas <= 0) { print('$nome não tem flechas!'); return; }
    flechas--;
    print('$nome atira em ${alvo.nome}! Dano: $forca | Flechas: $flechas');
    alvo.receberDano(forca);
  }

  @override
  void exibirStatus() {
    print('🏹 Arqueiro: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Flechas: $flechas');
  }

  @override
  String toString() {
    return 'Arqueiro | $nome | Vida: $vida | Nível: $nivel | Força: $forca | Flechas: $flechas';
  }
}

// ─── Mago ─────────────────────────────────────────────────────────
class Mago extends Combatente implements Magico {
  int mana;

  Mago(String nome, int vida, int nivel, int forca, this.mana)
      : super(nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    print('$nome ataca ${alvo.nome}! Dano: $forca');
    alvo.receberDano(forca);
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (!estaVivo()) { print('$nome está morto.'); return; }
    if (mana < 10) { print('$nome não tem mana!'); return; }
    int dano = forca + 15;
    mana -= 10;
    print('$nome lança magia em ${alvo.nome}! Dano: $dano ✨ | Mana: $mana');
    alvo.receberDano(dano);
  }

  @override
  void exibirStatus() {
    print('🧙 Mago: $nome | Vida: $vida | Nível: $nivel | Força: $forca | Mana: $mana');
  }

  @override
  String toString() {
    return 'Mago | $nome | Vida: $vida | Nível: $nivel | Força: $forca | Mana: $mana';
  }
}

// ─── Classe abstrata Inimigo ──────────────────────────────────────
abstract class Inimigo extends Personagem {
  int recompensa;

  Inimigo(String nome, int vida, int nivel, this.recompensa)
      : super(nome, vida, nivel);
}

// ─── Goblin ───────────────────────────────────────────────────────
class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade)
      : super(nome, vida, nivel, recompensa);

  @override
  void exibirStatus() {
    print('👺 Goblin: $nome | Vida: $vida | Nível: $nivel | Velocidade: $velocidade | Recompensa: $recompensa XP');
  }

  @override
  String toString() {
    return 'Goblin | $nome | Vida: $vida | Nível: $nivel | Velocidade: $velocidade | Recompensa: $recompensa XP';
  }
}

// ─── Dragao ───────────────────────────────────────────────────────
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
  void exibirStatus() {
    print('🐉 Dragão: $nome | Vida: $vida | Nível: $nivel | Poder de Fogo: $poderFogo | Recompensa: $recompensa XP');
  }

  @override
  String toString() {
    return 'Dragão | $nome | Vida: $vida | Nível: $nivel | Poder de Fogo: $poderFogo | Recompensa: $recompensa XP';
  }
}
