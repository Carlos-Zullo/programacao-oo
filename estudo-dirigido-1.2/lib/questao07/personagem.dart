class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  void alterarVida(int novaVida) {
    _vida = novaVida;
  }

  void exibir() {
    print('  Nome:    $_nome');
    print('  Vida:    $_vida');
    print('  Energia: $_energia');
  }
}

/*
  RESPOSTAS:

  a) Por que ao alterar a segunda variável, a primeira também apresentou a alteração?
     Porque p1 e p2 apontam para o MESMO objeto na memória. Em Dart, quando você faz
     "Personagem p2 = p1", não cria uma cópia — apenas cria uma segunda referência
     para o mesmo objeto. Qualquer alteração feita por p2 afeta o mesmo objeto que p1 aponta.

  b) Esse comportamento está correto?
     Sim, está correto e é esperado. Em Dart (e na maioria das linguagens OO), objetos
     são passados e atribuídos por referência, não por valor. Isso significa que múltiplas
     variáveis podem apontar para o mesmo objeto na heap, e qualquer uma delas pode
     modificá-lo.
*/
