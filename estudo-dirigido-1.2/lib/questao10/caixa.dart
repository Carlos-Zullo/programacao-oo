class Caixa {
  int _valor;

  Caixa(this._valor);

  void setValor(int v) => _valor = v;
  int get valor => _valor;

  void exibir() {
    print('  Valor: $_valor');
  }
}

void alterarValor(Caixa c) {
  c.setValor(99); // modifica o objeto original
}

void trocarCaixa(Caixa c) {
  c = Caixa(999); // só troca a referência LOCAL — não afeta o main
}

/*
  RESPOSTAS:

  a) Por que alterarValor() modifica o objeto original?
     Porque c é uma referência ao mesmo objeto. Chamar c.setValor() modifica
     o estado interno do objeto que existe na heap — o mesmo apontado no main.

  b) Por que trocarCaixa() não substitui a caixa criada no main?
     Porque "c = Caixa(999)" apenas reatribui a variável LOCAL c para um novo objeto.
     A variável "caixa" no main continua apontando para o objeto original — ela não
     é afetada pela reatribuição feita dentro da função.

  c) O que esse resultado mostra sobre a diferença entre alterar e reatribuir?
     Alterar o estado interno de um objeto (via métodos) afeta todos que têm
     referência para ele. Reatribuir uma variável local apenas muda para onde
     aquela variável aponta, sem afetar outras variáveis externas.
*/
