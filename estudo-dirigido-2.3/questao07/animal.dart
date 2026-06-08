abstract class Animal {
  String nome;

  Animal(this.nome);
}

abstract class Sonoro {
  void emitirSom();
}

class Cachorro extends Animal implements Sonoro {
  Cachorro(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Au au! 🐶');

  @override
  String toString() => 'Cachorro | $nome';
}

class Gato extends Animal implements Sonoro {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Miau! 🐱');

  @override
  String toString() => 'Gato | $nome';
}

class Passaro extends Animal implements Sonoro {
  Passaro(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Piu piu! 🐦');

  @override
  String toString() => 'Pássaro | $nome';
}

class Vaca extends Animal implements Sonoro {
  Vaca(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Muuu! 🐄');

  @override
  String toString() => 'Vaca | $nome';
}

class Ovelha extends Animal implements Sonoro {
  Ovelha(String nome) : super(nome);

  @override
  void emitirSom() => print('$nome diz: Méé! 🐑');

  @override
  String toString() => 'Ovelha | $nome';
}
