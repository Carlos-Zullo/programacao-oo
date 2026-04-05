class Endereco {
  String _rua;
  int _numero;
  String _cidade;

  Endereco(this._rua, this._numero, this._cidade);

  void alterarRua(String novaRua) => _rua = novaRua;

  void exibir() {
    print('  Rua:    $_rua, $_numero');
    print('  Cidade: $_cidade');
  }
}

class Cliente {
  String _nome;
  Endereco _endereco;

  Cliente(this._nome, this._endereco);

  // Construtor de cópia — cria novo objeto Endereco
  Cliente.copia(Cliente outro)
      : _nome = outro._nome,
        _endereco = Endereco(
          outro._endereco._rua,
          outro._endereco._numero,
          outro._endereco._cidade,
        );

  void exibir() {
    print('  Nome: $_nome');
    _endereco.exibir();
  }

  Endereco get endereco => _endereco;
}

/*
  RESPOSTAS:

  a) Por que a alteração no endereço de um cliente não modificou o do outro?
     Porque no construtor Cliente.copia(), foi criado um NOVO objeto Endereco
     com os mesmos valores. Os dois clientes têm endereços independentes na memória.

  b) O que foi feito para evitar o compartilhamento da mesma referência?
     Em vez de copiar apenas a referência (_endereco = outro._endereco),
     foi instanciado um novo Endereco com os mesmos dados — isso se chama cópia profunda.

  c) Qual a diferença entre copiar a referência e criar nova instância?
     Copiar referência: ambos apontam para o mesmo objeto — alterar um altera o outro.
     Nova instância: objetos independentes — alterar um não afeta o outro.
*/
